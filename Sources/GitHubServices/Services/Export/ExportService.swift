import Foundation
import GitHubModels
import GitHubNetworking
import GitHubServicesHelpers

public final class ExportService {
    public let client: GitHubAPI

    public init(client: GitHubAPI) {
        self.client = client
    }

    @AddCompletionHandler
    public func exportCurrentUserStarredRepositories(for exporter: RepositoriesExporter, destinationURL: URL) async throws {
        let user = try await client.authenticatedUser()
        let allStarredRepositories = try await client.allUserStarredRepositories(username: user.login, sort: nil, direction: nil)
        try await exporter.start(repositories: allStarredRepositories, destinationURL: destinationURL)
    }
}
