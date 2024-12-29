import Foundation
import MetaCodable

@Codable
@MemberInit
public struct TrendingRepository: Codable {
    public var author: String
    public var name: String
    public var url: URL?
    @CodedAt("description")
    public var descriptionField: String?
    public var language: String?
    public var languageColor: String?
    public var stars: Int?
    public var forks: Int?
    public var currentPeriodStars: Int?
    public var builtBy: [TrendingUser]?

    public var fullname: String {
        "\(author)/\(name)"
    }

    public var avatarURL: URL? {
        builtBy?.first?.avatar
    }
}

extension TrendingRepository: Equatable {
    public static func == (lhs: TrendingRepository, rhs: TrendingRepository) -> Bool {
        lhs.fullname == rhs.fullname
    }
}
