import Foundation
import MetaCodable
import HelperCoders

@Codable
@MemberInit
public struct User: Hashable {
    @CodedAt("avatar_url")
    public var avatarURL: URL? // A URL pointing to the user's public avatar.
    public var blog: String? // A URL pointing to the user's public website/blog.
    public var company: String? // The user's public profile company.
    public var contributions: Int?
    @CodedBy(ISO8601DateCoder())
    @CodedAt("created_at")
    public var createdAt: Date? // Identifies the date and time when the object was created.
    public var email: String? // The user's publicly visible profile email.
    public var followers: Int? // Identifies the total count of followers.
    public var following: Int? // Identifies the total count of following.
    @CodedAt("html_url")
    public var htmlURL: URL? // The HTTP URL for this user
    public var location: String? // The user's public profile location.
    public var login: String // The username used to login.
    public var name: String? // The user's public profile name.
    @Default(UserType.user)
    public var type: UserType
    @CodedBy(ISO8601DateCoder())
    @CodedAt("updated_at")
    public var updatedAt: Date? // Identifies the date and time when the object was last updated.
    public var starredRepositoriesCount: Int? // Identifies the total count of repositories the user has starred.
    @CodedAt("public_repos")
    public var repositoriesCount: Int? // Identifies the total count of repositories that the user owns.
    public var issuesCount: Int? // Identifies the total count of issues associated with this user
    public var watchingCount: Int? // Identifies the total count of repositories the given user is watching
    public var viewerCanFollow: Bool? // Whether or not the viewer is able to follow the user.
    public var viewerIsFollowing: Bool? // Whether or not this user is followed by the viewer.
    public var isViewer: Bool? // Whether or not this user is the viewing user.
    public var pinnedRepositories: [Repository]? // A list of repositories this user has pinned to their profile
    @Default([])
    public var organizations: [User] // A list of organizations the user belongs to.
    public var contributionCalendar: ContributionCalendar? // A calendar of this user's contributions on GitHub.

    /// Only for Organization type
    @CodedAt("description")
    public var descriptionField: String?

    /// Only for User type
    public var bio: String? // The user's public profile bio.

    public var organizationLogin: String? { type == .organization ? login : nil }

    public var userAndOrganizations: [User] {
        [self] + organizations
    }
}

extension User: Equatable {
    public static func == (lhs: User, rhs: User) -> Bool {
        lhs.login == rhs.login
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(login)
    }
}

extension User: Testable {
    public static var resourceName: String { "User.json" }
}

extension User {
    public var asCommitter: Committer? {
        guard let email else { return nil }
        return Committer(name: login, email: email, date: nil)
    }
}
