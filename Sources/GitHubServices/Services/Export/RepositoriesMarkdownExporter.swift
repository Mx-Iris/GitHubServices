import Markdown
import Foundation
@preconcurrency import GitHubModels
import MarkdownBuilder
import GitHubServicesHelpers

public struct RepositoriesMarkdownExporter: RepositoriesExporter, Sendable {
    public struct Options: Sendable {
        public let username: String
        public let repositoryType: String
        public init(username: String, repositoryType: String) {
            self.username = username
            self.repositoryType = repositoryType
        }
    }

    public var options: Options?

    @AddCompletionHandler
    public func start(repositories: [Repository], destinationURL: URL) async throws {
        try await withCheckedThrowingContinuation { continuation in
            DispatchQueue.global().async {
                do {
                    let markdownDocument = Document {
                        if let options {
                            Heading(level: 1) {
                                Text("\(options.username) \(options.repositoryType) Repositories")
                            }
                        }

                        for repository in repositories {
                            Heading(level: 2) {
                                Text(repository.fullname)
                            }
                            Paragraph {
                                Text("URL: ")
                                Link(destination: repository.htmlURL) {
                                    Text(repository.fullname)
                                        .emphasis()
                                }
                                LineBreak()
                                if let description = repository.description {
                                    Text("Description: \(description)")
                                }
                            }
                        }
                    }

                    try markdownDocument.format().write(to: destinationURL, atomically: true, encoding: .utf8)
                    continuation.resume()
                } catch {
                    continuation.resume(throwing: error)
                }
            }
        }
    }

    public init(options: Options? = nil) {
        self.options = options
    }
}
