import Foundation
import MetaCodable
import HelperCoders

@Codable
@MemberInit
public struct Milestone: Codable {
    @CodedBy(ISO8601DateCoder())
    @CodedAt("closed_at")
    public var closedAt: Date?
    @CodedAt("closed_issues")
    public var closedIssues: Int?
    @CodedBy(ISO8601DateCoder())
    @CodedAt("created_at")
    public var createdAt: Date?
    public var creator: User?
    @CodedAt("description")
    public var descriptionField: String?
    @CodedBy(ISO8601DateCoder())
    @CodedAt("due_on")
    public var dueOn: Date?
    @CodedAt("html_url")
    public var htmlURL: URL?
    public var id: Int?
    @CodedAt("labels_url")
    public var labelsURL: URL?
    @CodedAt("node_id")
    public var nodeID: String?
    public var number: Int?
    @CodedAt("open_issues")
    public var openIssues: Int?
    public var state: State = .open
    public var title: String?
    @CodedBy(ISO8601DateCoder())
    @CodedAt("updated_at")
    public var updatedAt: Date?
    public var url: URL?
}
