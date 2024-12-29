import Foundation
import MetaCodable
import HelperCoders

@Codable
@MemberInit
public struct Comment {
    @CodedAt("author_association")
    public var authorAssociation: String?
    
    public var body: String?
    
    @CodedBy(ISO8601DateCoder())
    @CodedAt("created_at")
    public var createdAt: Date?
    
    @CodedAt("html_url")
    public var htmlURL: URL?
    public var id: Int?
    
    @CodedAt("issue_url")
    public var issueURL: URL?
    
    @CodedAt("node_id")
    public var nodeID: String?
    
    @CodedBy(ISO8601DateCoder())
    @CodedAt("updated_at")
    public var updatedAt: Date?
    
    public var url: URL?
    
    public var user: User?
}
