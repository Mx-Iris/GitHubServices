import Foundation
import MetaCodable
import HelperCoders

@Codable
@Inherits(decodable: false, encodable: false)
public final class Repository {
    @CodedAt("archived")
    @Default(false)
    public let isArchived: Bool

    @CodedAt("clone_url")
    public let cloneURL: URL

    @CodedBy(ISO8601DateCoder())
    @CodedAt("created_at")
    public let createdAt: Date // Identifies the date and time when the object was created.

    @CodedBy(ISO8601DateCoder())
    @CodedAt("updated_at")
    public let updatedAt: Date // Identifies the date and time when the object was last updated.

    @CodedBy(ISO8601DateCoder())
    @CodedAt("pushed_at")
    public let pushedAt: Date

    @CodedAt("default_branch")
    public let defaultBranch: String // The Ref name associated with the repository's default branch.

    public let description: String? // The description of the repository.

    @CodedAt("fork")
    public let isFork: Bool // Identifies if the repository is a fork.

    public let forks: Int // Identifies the total count of direct forked repositories

    @CodedAt("forks_count")
    public let forksCount: Int

    @Default("")
    @CodedAt("full_name")
    public let fullname: String // The repository's name with owner.

    @CodedAt("has_downloads")
    public let hasDownloads: Bool

    @CodedAt("has_issues")
    public let hasIssues: Bool

    @CodedAt("has_pages")
    public let hasPages: Bool

    @CodedAt("has_projects")
    public let hasProjects: Bool

    @CodedAt("has_wiki")
    public let hasWiki: Bool

    public let homepage: String? // The repository's URL.

    @CodedAt("html_url")
    public let htmlURL: URL

    public let language: String? // The name of the current language.

    public var programmingLanguage: ProgrammingLanguage? {
        ProgrammingLanguage(rawValue: language)
    }

    public let languages: Languages? // A list containing a breakdown of the language composition of the repository.
    public let license: License?

    public let name: String // The name of the repository.

    @CodedAt("network_count")
    public let networkCount: Int?

    @CodedAt("node_id")
    public let nodeID: String

    @CodedAt("open_issues")
    public let openIssues: Int

    @CodedAt("open_issues_count")
    public let openIssuesCount: Int // Identifies the total count of issues that have been opened in the repository.

    public let organization: User?

    public let owner: User? // The User owner of the repository.

    @CodedAt("private")
    public let isPrivate: Bool

    public let size: Int // The number of kilobytes this repository occupies on disk.

    @CodedAt("ssh_url")
    public let sshURL: URL

    @CodedAt("stargazers_count")
    public let stargazersCount: Int // Identifies the total count of items who have starred this starrable.

    @CodedAt("subscribers_count")
    public let subscribersCount: Int? // Identifies the total count of users watching the repository

    public let url: URL // The HTTP URL for this repository

    public let watchers: Int

    @CodedAt("watchers_count")
    public let watchersCount: Int

    @CodedAt("parent.full_name")
    public let parentFullname: String? // The parent repository's name with owner, if this is a fork.

    public let commitsCount: Int? // Identifies the total count of the commits

    public let pullRequestsCount: Int? // Identifies the total count of a list of pull requests that have been opened in the repository.

    public let branchesCount: Int?

    public let releasesCount: Int? // Identifies the total count of releases which are dependent on this repository.

    public let contributorsCount: Int? // Identifies the total count of Users that can be mentioned in the context of the repository.

    public let viewerHasStarred: Bool? // Returns a boolean indicating whether the viewing user has starred this starrable.

    @Default([])
    public let topics: [String]

    public let source: Repository?
    public let parent: Repository?
}

extension Repository: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(fullname)
    }

    public static func == (lhs: Repository, rhs: Repository) -> Bool {
        lhs.fullname == rhs.fullname
    }
}

extension Repository: Testable {
    public static var resourceName: String { "Repository.json" }
}
