import Foundation
import GitHubModels
import GitHubServicesHelpers

@AddAsyncAllMembers
public protocol RepositoriesExporter {
    func start(repositories: [Repository], destinationURL: URL, completion: @escaping (Result<Void, Error>) -> Void)
}
