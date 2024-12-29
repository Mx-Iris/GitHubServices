import Foundation
import MetaCodable

public enum DefaultWorkflowPermissions: String, Codable {
    case read
    case write
}

@Codable
@MemberInit
public struct DefaultWorkflowPermissionsInfo {
    @CodedAt("default_workflow_permissions")
    let defaultWorkflowPermissions: DefaultWorkflowPermissions
    
    @CodedAt("can_approve_pull_request_reviews")
    let isCanApprovePullRequestReviews: Bool
}
