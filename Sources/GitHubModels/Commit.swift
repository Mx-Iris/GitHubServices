import Foundation
import MetaCodable

@Codable
@MemberInit
public struct Commit {
    public var url: URL?
    public var commit: CommitInfo?
    public var files: [File]?
    public var sha: String?
    public var stats: Stat?
    public var author: Committer?
    public var committer: Committer?
    @CodedAt("html_url") 
    public var htmlURL: URL?
    @CodedAt("node_id")
    public var nodeID: String?
    @CodedAt("comments_url") 
    public var commentsURL: URL?
}

@Codable
@MemberInit
public struct CommitInfo: Codable {
    public var author: Committer?
    public var committer: Committer?
    public var message: String?
    public var url: URL?
    public var verification: Verification?
    @CodedAt("comment_count")
    public var commentCount: Int?
}

@Codable
@MemberInit
public struct Stat {
    public var additions: Int?
    public var deletions: Int?
    public var total: Int?
}

@Codable
@MemberInit
public struct File {
    public var additions: Int?
    public var changes: Int?
    public var deletions: Int?
    public var filename: String?
    public var patch: String?
    public var status: String?
    @CodedAt("raw_url")
    public var rawURL: URL?
    @CodedAt("blob_url")
    public var blobURL: URL?
}

@Codable
@MemberInit
public struct Verification {
    public var payload: String?
    public var reason: String
    public var signature: String?
    public var verified: Bool
}
