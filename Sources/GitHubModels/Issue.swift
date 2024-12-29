import Foundation
import MetaCodable
import HelperCoders

@Codable
@MemberInit
public struct Issue: Codable {
    @CodedAt("active_lock_reason")
    public var activeLockReason: String?
    public var assignee: User?
    public var assignees: [User]?
    public var body: String?
    @CodedBy(ISO8601DateCoder())
    @CodedAt("closed_at")
    public var closedAt: Date?
    @CodedAt("closed_by")
    public var closedBy: User?
    public var comments: Int?
    @CodedAt("comments_url")
    public var commentsURL: URL?
    @CodedBy(ISO8601DateCoder())
    @CodedAt("created_at")
    public var createdAt: Date?
    @CodedAt("events_url")
    public var eventsURL: URL?
    @CodedAt("html_url")
    public var htmlURL: URL?
    public var id: Int?
    public var labels: [IssueLabel]?
    @CodedAt("labels_url")
    public var labelsURL: URL?
    public var locked: Bool?
    public var milestone: Milestone?
    @CodedAt("node_id")
    public var nodeID: String?
    public var number: Int?
    @CodedAt("pull_request")
    public var pullRequest: PullRequest?
    @CodedAt("repository_url")
    public var repositoryURL: URL?
    public var state: State = .open
    public var title: String?
    @CodedBy(ISO8601DateCoder())
    @CodedAt("updated_at")
    public var updatedAt: Date?
    public var url: URL?
    public var user: User?
}

@Codable
@MemberInit
public struct IssueLabel: Codable {
    public var color: String?
    @CodedAt("default")
    public var defaultField: Bool?
    @CodedAt("description")
    public var descriptionField: String?
    public var id: Int?
    public var name: String?
    @CodedAt("node_id")
    public var nodeID: String?
    public var url: URL?
}
