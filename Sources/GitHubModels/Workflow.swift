import Foundation
import MetaCodable
import HelperCoders

@Codable
@MemberInit
public struct Workflow: Codable {
    public let id: Int
    @CodedAt("node_id")
    public let nodeID: String
    public let name: String
    public let path: String
    public let state: String
    @CodedAt("created_at")
    @CodedBy(ISO8601DateCoder())
    public let createdAt: Date
    @CodedAt("updated_at")
    @CodedBy(ISO8601DateCoder())
    public let updatedAt: Date
    public let url: URL
    @CodedAt("html_url")
    public let htmlURL: URL
    @CodedAt("badge_url")
    public let badgeURL: URL
}
