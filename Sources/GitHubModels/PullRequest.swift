import Foundation
import MetaCodable
import HelperCoders

@Codable
@MemberInit
public struct PullRequest: Codable {
    @CodedAt("active_lock_reason")
    public var activeLockReason: String?
    public var additions: Int?
    public var assignee: User?
    public var assignees: [User]?
    @CodedAt("author_association")
    public var authorAssociation: String?
    ///    var base: Base?
    public var body: String?
    @CodedAt("changed_files")
    public var changedFiles: Int?
    @CodedBy(ISO8601DateCoder())
    @CodedAt("closed_at")
    public var closedAt: Date?
    public var comments: Int?
    @CodedAt("comments_url")
    public var commentsURL: URL?
    public var commits: Int?
    @CodedAt("commits_url")
    public var commitsURL: URL?
    @CodedBy(ISO8601DateCoder())
    @CodedAt("created_at")
    public var createdAt: Date?
    public var deletions: Int?
    @CodedAt("diff_url")
    public var diffURL: URL?
    ///    var head: Base?
    @CodedAt("html_url")
    public var htmlURL: URL?
    public var id: Int?
    @CodedAt("issue_url")
    public var issueURL: URL?
    public var labels: [IssueLabel]?
    public var locked: Bool?
    @CodedAt("maintainer_can_modify")
    public var maintainerCanModify: Bool?
    @CodedAt("merge_commit_sha")
    public var mergeCommitSha: String?
    public var mergeable: Bool?
    @CodedAt("mergeable_state")
    public var mergeableState: String?
    public var merged: Bool?
    @CodedBy(ISO8601DateCoder())
    @CodedAt("merged_at")
    public var mergedAt: Date?
    @CodedAt("merged_by")
    public var mergedBy: User?
    public var milestone: Milestone?
    @CodedAt("node_id")
    public var nodeID: String?
    public var number: Int?
    @CodedAt("patch_url")
    public var patchURL: URL?
    public var rebaseable: Bool?
    @CodedAt("requested_reviewers")
    public var requestedReviewers: [User]?
    ///    var requestedTeams: [RequestedTeam]?
    @CodedAt("review_comment_url")
    public var reviewCommentURL: URL?
    @CodedAt("review_comments")
    public var reviewComments: Int?
    @CodedAt("review_comments_url")
    public var reviewCommentsURL: URL?
//    @Default(ifMissing: State.open, forErrors: State.open)
//    public var state: State
    @CodedAt("statuses_url")
    public var statusesURL: URL?
    public var title: String?
    @CodedBy(ISO8601DateCoder())
    @CodedAt("updated_at")
    public var updatedAt: Date?
    public var url: URL?
    public var user: User?

}
