import Foundation
import MetaCodable

@Codable
@MemberInit
public struct Branch {
    ///    var links: Link?
    public var commit: Commit?
    public var name: String?
    public var protectedField: Bool?
    @CodedAt("protection_url")
    public var protectionURL: URL?
}
