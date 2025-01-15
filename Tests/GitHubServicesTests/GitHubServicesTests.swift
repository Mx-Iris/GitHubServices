import XCTest
import GitHubModels
import GitHubNetworking
import GitHubServices

final class GitHubServicesTests: XCTestCase {
    lazy var tokenString = ""

    lazy var token = Token(accessToken: tokenString)

    lazy var client = GitHubClient(token: token, privateToken: nil)

    lazy var workflowService = WorkflowService(client: client, user: nil)

    lazy var exportService = ExportService(client: client)

    lazy var backupService = BackupService(client: client, rootDirectoryURL: .init(fileURLWithPath: "/Volumes/Generic/GitHubBackup"))
    
    func testCreateOrUpdateWorkflows() async throws {
        let repository = try await client.repository(fullname: "MxIris-macOS-Library-Forks/AdvancedCollectionTableView", qualifiedName: "")
        let result = try await workflowService.createOrUpdateWorkflowFile(forTemplate: UpstreamSyncWorkflowFileTemplate.self as! WorkflowFileTemplate, repository: repository, filename: "UpstreamSync.yml", message: "Create or update workflow file")
        print(result.commit)
    }

    func testProfile() async throws {
        print("=======")
        let profile = try await client.profile()
        profile.userAndOrganizations.print(keyPath: \.login)
        print(profile.userAndOrganizations.count)
        print("=======")
    }

    func testUser() async throws {
        let user = try await client.authenticatedUser()
        print(user)
    }

    func testExportStarredRepositories() {
        let expectation = XCTestExpectation(description: "")
        let exportService = ExportService(client: client)
        exportService.exportCurrentUserStarredRepositories(for: RepositoriesMarkdownExporter(), destinationURL: .init(fileURLWithPath: "/Users/JH/Desktop/StarredRepositories.md")) { result in
            print(result)
            expectation.fulfill()
        }
        wait(for: [expectation])
    }

    func testExportStarredRepositoriesAsync() async throws {
        try await exportService.exportCurrentUserStarredRepositories(for: RepositoriesMarkdownExporter(), destinationURL: .init(fileURLWithPath: "/Users/JH/Desktop/StarredRepositories.md"))
//        print(try await exportService.test())
//        let user = try await client.authenticatedUser()
//        let allStarredRepositories = try await client.allUserStarredRepositories(username: user.login, sort: nil, direction: nil)
//        try await RepositoriesMarkdownExporter.start(repositories: allStarredRepositories, destinationURL: #URL("/Users/JH/Desktop/StarredRepositories.md"), options: nil)
    }
    
    func testBackupService() async throws {
        backupService.delegate = self
        let results = try await backupService.performTasks(of: [.user, .organizations, .starred])
        print(results)
    }
}


extension GitHubServicesTests: BackupServiceDelegate {
    func backupService(_ service: BackupService, willStartTask taskType: BackupTaskType) {
        print("Start Backup \(taskType) Repositories")
    }
    
    func backupService(_ service: BackupService, didFinishTask taskType: BackupTaskType) {
        print("Finish Backup \(taskType) Repositories")
    }
    
    func backupService(_ service: BackupService, willCloneRepository repository: GitHubRepository) {
        print("Will Clone Repository: \(repository.fullname)")
    }
    
    func backupService(_ service: BackupService, cloningRepository repository: GitHubRepository, withProgress progress: TransferProgress) {
        print("Cloning Repository: \(repository.fullname), Progress: \(progress)")
    }
    
    func backupService(_ service: BackupService, didCloneRepository repository: GitHubRepository) {
        print("Did Clone Repository: \(repository.fullname)")
    }
    
    
}

extension Array {
    func print(keyPath: KeyPath<Element, some Any>) {
        forEach { element in
            Swift.print(element[keyPath: keyPath])
        }
    }
}

extension Error {
    func assertAndPrint() {
        XCTAssert(false, "\(self)")
    }
}
