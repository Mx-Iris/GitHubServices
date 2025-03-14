import Foundation
import MetaCodable
import HelperCoders

@Codable
@MemberInit
public struct Notification: Codable {
    public var id: String?
    @CodedBy(ISO8601DateCoder())
    @CodedAt("last_read_at")
    public var lastReadAt: Date?
    public var reason: String?
    public var repository: Repository?
    public var subject: Subject?
    @CodedAt("subscription_url")
    public var subscriptionURL: URL?
    public var unread: Bool?
    @CodedBy(ISO8601DateCoder())
    @CodedAt("updated_at")
    public var updatedAt: Date?
    public var url: URL?
}

extension Notification: Equatable {
    public static func == (lhs: Notification, rhs: Notification) -> Bool {
        lhs.id == rhs.id
    }
}

@Codable
@MemberInit
public struct Subject: Codable {
    @CodedAt("latest_comment_url")
    public var latestCommentURL: URL?
    public var title: String?
    public var type: String?
    public var url: URL?
}
