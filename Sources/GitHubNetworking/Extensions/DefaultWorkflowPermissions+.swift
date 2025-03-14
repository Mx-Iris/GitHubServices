import Foundation
import GitHubModels

extension DefaultWorkflowPermissions: APIParameterType {
    var key: String { "default_workflow_permissions" }
    var value: Any? { rawValue }
}

