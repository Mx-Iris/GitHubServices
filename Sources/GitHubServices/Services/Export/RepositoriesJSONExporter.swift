import Foundation
@preconcurrency import GitHubModels
import GitHubServicesHelpers

public struct RepositoriesJSONExporter: RepositoriesExporter {
    @AddCompletionHandler
    public func start(repositories: [Repository], destinationURL: URL) async throws {
        try await withCheckedThrowingContinuation { continuation in
            DispatchQueue.global().async {
                do {
                    let data = try JSONEncoder().encode(repositories)
                    try data.write(to: destinationURL)
                    continuation.resume()
                } catch {
                    continuation.resume(throwing: error)
                }
            }
        }
    }
    
    public init() {}
}
