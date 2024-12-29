import Git
import Foundation
import GitHubModels
import GitHubServicesHelpers

public typealias GitHubRepository = GitHubModels.Repository
public typealias GitRepository = Git.Repository

public final class Cloner {
    public enum ProgressOrResult {
        case progress(TransferProgress)
        case result(GitRepository)
    }

    public enum Error: Swift.Error {
        case invalidRemoteURL(URL)
    }

    public let githubRepository: GitHubRepository

    public let username: String?

    private let queue = DispatchQueue(label: "com.JH.GitHubServices.Cloner")

    public init(repository: GitHubRepository, username: String? = nil) {
        self.githubRepository = repository
        self.username = username
    }

    
    public func clone(to localURL: URL, completion: @escaping (Result<ProgressOrResult, Swift.Error>) -> Void) {
        let remoteURL = githubRepository.cloneURL

        let credential: Git.Credential
        
        if githubRepository.isPrivate, let username, let password = KeychainStorage.shared.find(url: remoteURL, account: username) {
            credential = PlainTextCredential.plainText(username: username, password: password)
        } else {
            credential = NullCredential.none
        }

        queue.async {
            do {
                let gitRepository = try GitRepository.clone(from: remoteURL, to: .init(localURL.path), options: .default, credential: credential) { progress in
                    completion(.success(.progress(progress)))
                }
                completion(.success(.result(gitRepository)))
            } catch {
                completion(.failure(error))
            }
        }
    }
    
    public func clone(to localURL: URL) -> AsyncThrowingStream<ProgressOrResult, Swift.Error> {
        AsyncThrowingStream { continuation in
            clone(to: localURL) { result in
                switch result {
                case .success(let success):
                    switch success {
                    case .progress:
                        continuation.yield(success)
                    case .result:
                        continuation.yield(success)
                        continuation.finish()
                    }
                case .failure(let failure):
                    continuation.finish(throwing: failure)
                }
            }
        }
    }
}
