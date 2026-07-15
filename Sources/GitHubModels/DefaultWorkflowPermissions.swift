import Foundation
import MetaCodable

public enum DefaultWorkflowPermissions: String, Codable, Sendable {
    case read
    case write
}

@Codable
@MemberInit
public struct DefaultWorkflowPermissionsInfo: Sendable {
    @CodedAt("default_workflow_permissions")
    let defaultWorkflowPermissions: DefaultWorkflowPermissions
    
    @CodedAt("can_approve_pull_request_reviews")
    let isCanApprovePullRequestReviews: Bool
}
