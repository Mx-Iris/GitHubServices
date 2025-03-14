import Foundation
import GitHubModels
import GitHubNetworking

public final class WorkflowService {
    public var client: GitHubAPI
    public let user: User?

    public init(client: GitHubAPI, user: User?) {
        self.client = client
        self.user = user
    }

    public typealias CreateOrUpdateResult = (content: Content?, commit: Commit)

    public func createOrUpdateWorkflowFile(forTemplate fileTemplate: WorkflowFileTemplate, repository: Repository, filename: String, message: String) async throws -> CreateOrUpdateResult {
        let fileContent = try fileTemplate.apply(for: repository).toBase64
        do {
            let content = try await client.workflowFile(fullname: repository.fullname, filename: filename, ref: nil)
            return try await perform(sha: content.sha)
        } catch {
            if let error = error as? APIError, case .resourceNotFound = error {
                return try await perform()
            } else {
                throw error
            }
        }
        func perform(sha: String? = nil) async throws -> CreateOrUpdateResult {
            let result = try await client.createOrUpdateWorkflowFile(fullname: repository.fullname, filename: filename, content: fileContent, sha: sha, message: message, committer: user?.asCommitter)
            return result
        }
    }
}
