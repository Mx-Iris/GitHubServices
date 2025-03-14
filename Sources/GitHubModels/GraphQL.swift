import Foundation
import MetaCodable

public enum GraphQL {
    
}

@Codable
@MemberInit
public struct UserList {
    public let id: String
    public let name: String
    public let isPrivate: Bool
    public let description: String?
    public let items: Int
    public let slug: String
}

@Codable
@MemberInit
public struct List {
    public let owner: Owner
    public let userList: UserList
    public let starredRepos: StarredRepos
}

@Codable
@MemberInit
public struct StarredRepos {
    @Codable
    @MemberInit
    public struct PageInfo {
        public let hasNextPage: Bool
        public let endCursor: String?
    }

    public let pageInfo: PageInfo
    public let items: [RepositoryListItem]
}

@Codable
@MemberInit
public struct Owner {
    public let id: String
    public let login: String
    public let isViewer: Bool?
    public let avatarURL: URL?
    public let privateProfile: Bool?
}

@Codable
@MemberInit
public struct RepositoryListItem {
    @Codable
    @MemberInit
    public struct Parent {
        public let id: String
        public let name: String
        public let owner: Owner
    }

    public let id: String
    public let primaryLanguage: ProgrammingLanguage?
    public let name: String
    public let owner: Owner
    public let shortDescriptionHTML: String
    public let descriptionHTML: String
    public let stargazerCount: Int
    public let parent: Parent?
    public let usesCustomOpenGraphImage: Bool
    public let openGraphImageURL: URL
    public let viewerHasStarred: Bool
    public let hasIssuesEnabled: Bool
    public let isDiscussionsEnabled: Bool
    public let isArchived: Bool
}
