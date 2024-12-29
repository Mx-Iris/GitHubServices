import Foundation
import GitHubModels

public protocol WorkflowFileTemplate {
    var identifier: String { get }
    func apply(for repository: Repository) throws -> String
}
