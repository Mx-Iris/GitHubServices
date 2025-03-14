import Foundation
import MetaCodable
import HelperCoders

@Codable
@MemberInit
public struct Committer {
    public var name: String
    public var email: String

    @CodedBy(ISO8601DateCoder())
    public var date: Date?
}
