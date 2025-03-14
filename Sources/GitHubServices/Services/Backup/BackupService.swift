import Git
import Foundation
import GitHubModels
import GitHubNetworking
import ArrayBuilderModule

public typealias TransferProgress = Git.TransferProgress

public enum BackupServiceError: Error {
    case repositoryAlreadyExists
    case gitUnknownError
    case serviceDidDealloc
}

public struct BackupSuccessResult {
    public let localRepository: GitRepository
    public let remoteRepository: GitHubRepository
}

public struct BackupFailureResult {
    public let repository: GitHubRepository
    public let error: Error
}

public enum BackupTaskResult {
    case success(BackupSuccessResult)
    case failure(BackupFailureResult)
}

public enum BackupTaskType: Hashable, CustomStringConvertible {
    case starred
    case user
    case organizations
    
    public var description: String {
        switch self {
        case .starred:
            "Starred"
        case .user:
            "User"
        case .organizations:
            "Organizations"
        }
    }
}

public enum BackupTaskState: String, Hashable {
    case pending = "Pending"
    case inProgress = "In Progress"
    case complete = "Complete"
    case error = "Error"
}

public protocol BackupServiceDelegate: AnyObject {
    func backupService(_ service: BackupService, willStartTask taskType: BackupTaskType)
    func backupService(_ service: BackupService, didFinishTask taskType: BackupTaskType)
    func backupService(_ service: BackupService, willCloneRepository repository: GitHubRepository)
    func backupService(_ service: BackupService, cloningRepository repository: GitHubRepository, withProgress progress: TransferProgress)
    func backupService(_ service: BackupService, didCloneRepository repository: GitHubRepository)
}

extension BackupServiceDelegate {
    public func backupService(_ service: BackupService, willStartTask taskType: BackupTaskType) {}
    public func backupService(_ service: BackupService, didFinishTask taskType: BackupTaskType) {}
    public func backupService(_ service: BackupService, willCloneRepository repository: GitHubRepository) {}
    public func backupService(_ service: BackupService, cloningRepository repository: GitHubRepository, withProgress progress: TransferProgress) {}
    public func backupService(_ service: BackupService, didCloneRepository repository: GitHubRepository) {}
}

public struct BackupResult {
    public let type: BackupTaskType
    public let results: [BackupTaskResult]
    public let description: String
}

public final class BackupService {
    public let client: GitHubAPI

    public let rootDirectoryURL: URL

    public weak var delegate: BackupServiceDelegate?

    public var userRepositoriesDirectoryName: String = "User Repositories"

    public var organizationsRepositoriesDirectoryName: String = "Organizations Repositories"

    public var starredRepositoriesDirectoryName: String = "Starred Repositories"

    private var task: Task<Any, Error> = Task {}

    public struct Options {
        public init() {}
    }

    public let options: Options

    public init(client: GitHubAPI, rootDirectoryURL: URL, options: Options = .init()) {
        self.client = client
        self.rootDirectoryURL = rootDirectoryURL
        self.options = options
    }

    public func performTasks(of type: [BackupTaskType]) async throws -> [BackupResult] {
        var backupResults: [BackupResult] = []
        try Task.checkCancellation()
        let profile = try await client.profile()
        if type.contains(.user) {
            try Task.checkCancellation()
            delegate?.backupService(self, willStartTask: .user)
            let repositories = try await client.allAuthenticatedUserRepositories(filter: .type(.owner))
            let userTaskResults = try await cloneRepositories(repositories, parentDirectoryName: userRepositoriesDirectoryName, username: profile.login)
            backupResults.append(.init(type: .user, results: userTaskResults, description: "\(profile.login) Repositories"))
            delegate?.backupService(self, didFinishTask: .user)
        }

        if type.contains(.organizations) {
            delegate?.backupService(self, willStartTask: .organizations)
            for organization in profile.organizations {
                try Task.checkCancellation()
                let repositories = try await client.allOrganizationRepositories(organization: organization.login, type: .owner)
                let results = try await cloneRepositories(repositories, parentDirectoryName: organizationsRepositoriesDirectoryName, username: profile.login)
                backupResults.append(.init(type: .organizations, results: results, description: "\(organization.login) Repositories"))
            }
            delegate?.backupService(self, didFinishTask: .organizations)
        }

        if type.contains(.starred) {
            try Task.checkCancellation()
            delegate?.backupService(self, willStartTask: .starred)
            let repositories = try await client.allUserStarredRepositories(username: profile.login, sort: nil, direction: nil)
            let result = try await cloneRepositories(repositories, parentDirectoryName: starredRepositoriesDirectoryName, username: nil)
            backupResults.append(.init(type: .starred, results: result, description: "\(profile.login) Starred Repositories"))
            delegate?.backupService(self, didFinishTask: .starred)
        }

        return backupResults
    }

    private func cloneRepositories(_ repositories: [GitHubRepository], parentDirectoryName: String, username: String?) async throws -> [BackupTaskResult] {
        try await withThrowingTaskGroup(of: BackupTaskResult.self) { [weak self] group in
            guard let self else {
                throw BackupServiceError.serviceDidDealloc
            }
            for repository in repositories {
                let fullname = repository.fullname.replacingOccurrences(of: "/", with: "-")
                let url = rootDirectoryURL.appendingPathComponent(parentDirectoryName).appendingPathComponent(fullname)
                group.addTask {
                    do {
                        if FileManager.default.fileExists(atPath: url.path) {
                            throw BackupServiceError.repositoryAlreadyExists
                        } else {
                            try await DirectoryCreator.create(url, withIntermediateDirectories: true)
                        }
                        self.delegate?.backupService(self, willCloneRepository: repository)
                        let cloner = Cloner(repository: repository, username: username)
                        for try await progressOrResult in cloner.clone(to: url) {
                            switch progressOrResult {
                            case let .progress(progress):
                                self.delegate?.backupService(self, cloningRepository: repository, withProgress: progress)
                            case let .result(result):
                                self.delegate?.backupService(self, didCloneRepository: repository)
                                return .success(.init(localRepository: result, remoteRepository: repository))
                            }
                        }
                        throw BackupServiceError.gitUnknownError
                    } catch {
                        self.delegate?.backupService(self, didCloneRepository: repository)
                        return .failure(.init(repository: repository, error: error))
                    }
                }
            }
            var results: [BackupTaskResult] = []
            for try await result in group {
                results.append(result)
            }
            return results
        }
    }
}
