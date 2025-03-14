import Foundation
import MetaCodable
/// TrendingUser model

@Codable
@MemberInit
public struct TrendingUser: Codable {
    public var username: String
    public var name: String?
    public var url: URL?
    public var avatar: URL?
    public var repo: TrendingRepository?
    @Default(UserType.user)
    public var type: UserType

}

extension TrendingUser: Equatable {
    public static func == (lhs: TrendingUser, rhs: TrendingUser) -> Bool {
        lhs.username == rhs.username
    }
}
