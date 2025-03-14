import Foundation
import MetaCodable

/// Event Types
///
/// - fork: Triggered when a user forks a repository.
/// - commitComment: Triggered when a commit comment is created.
/// - create: Represents a created repository, branch, or tag.
/// - issueComment: Triggered when an issue comment is created, edited, or deleted.
/// - issues: Triggered when an issue is assigned, unassigned, labeled, unlabeled, opened, edited, milestoned, demilestoned, closed, or reopened.
/// - member: Triggered when a user accepts an invitation or is removed as a collaborator to a repository, or has their permissions changed.
/// - organizationBlock: Triggered when an organization blocks or unblocks a user.
/// - `public`: Triggered when a private repository is open sourced. Without a doubt: the best GitHub event.
/// - release: Triggered when a release is published.
/// - star: The WatchEvent is related to starring a repository, not watching.
public enum EventType: String, Codable, Hashable {
    case fork = "ForkEvent"
    case commitComment = "CommitCommentEvent"
    case create = "CreateEvent"
    case delete = "DeleteEvent"
    case issueComment = "IssueCommentEvent"
    case issues = "IssuesEvent"
    case member = "MemberEvent"
    case organizationBlock = "OrgBlockEvent"
    case `public` = "PublicEvent"
    case pullRequest = "PullRequestEvent"
    case pullRequestReviewComment = "PullRequestReviewCommentEvent"
    case push = "PushEvent"
    case release = "ReleaseEvent"
    case star = "WatchEvent"
    case unknown = ""
}

@Codable
@MemberInit
public struct EventRepository {
    public let id: Int

    public let name: String

    public let url: URL
}

/// Each event has a similar JSON schema, but a unique payload object that is determined by its event type.
public struct Event: Codable {
    private static let iso8601DateFormatter: ISO8601DateFormatter = {
        let formatter = ISO8601DateFormatter()
        formatter.formatOptions = .withInternetDateTime
        return formatter
    }()

    public var actor: User?
    public var createdAt: Date?
    public var id: String?
    public var organization: User?
    public var isPublic: Bool?
    public var repository: EventRepository?
    public var type: EventType = .unknown
    public var payload: Payload?

    public init() {}

    public enum CodingKeys: String, CodingKey {
        case actor
        case createdAt = "created_at"
        case id
        case organization = "org"
        case isPublic = "public"
        case repository = "repo"
        case type
        case payload
    }

    public func encode(to encoder: Encoder) throws {}

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.actor = try container.decodeIfPresent(User.self, forKey: .actor)
        self.createdAt = try container.decodeIfPresent(String.self, forKey: .createdAt).flatMap {
            Self.iso8601DateFormatter.date(from: $0)
        }
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.organization = try container.decodeIfPresent(User.self, forKey: .organization)
        self.isPublic = try container.decodeIfPresent(Bool.self, forKey: .isPublic)
        self.repository = try container.decodeIfPresent(EventRepository.self, forKey: .repository)
        self.type = try container.decode(EventType.self, forKey: .type)

        let payloadType: Payload.Type = switch type {
        case .fork: ForkPayload.self
        case .create: CreatePayload.self
        case .delete: DeletePayload.self
        case .issueComment: IssueCommentPayload.self
        case .issues: IssuesPayload.self
        case .member: MemberPayload.self
        case .pullRequest: PullRequestPayload.self
        case .pullRequestReviewComment: PullRequestReviewCommentPayload.self
        case .push: PushPayload.self
        case .release: ReleasePayload.self
        case .star: StarPayload.self
        default: EmptyPayload.self
        }
        self.payload = try container.decode(payloadType, forKey: .payload)
    }
}

extension Event: Equatable, Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    public static func == (lhs: Event, rhs: Event) -> Bool {
        lhs.id == rhs.id
    }
}

public protocol Payload: Codable {}

public struct EmptyPayload: Payload {}

@Codable
@MemberInit
public struct ForkRepository {
    @CodedAt("node_id")
    public let nodeID: String

    public let id: Int

    @CodedAt("full_name")
    public let fullName: String

    public let name: String
}

public struct ForkPayload: Payload {
    public var repository: ForkRepository?

    public enum CodingKeys: String, CodingKey {
        case repository = "forkee"
    }
}

public struct DeletePayload: Payload {
    public var ref: String?
    public var refType: DeleteEventType = .repository
    public var pusherType: String?

    public enum CodingKeys: String, CodingKey {
        case ref
        case refType = "ref_type"
        case pusherType = "pusher_type"
    }
}

public struct IssueCommentPayload: Payload {
    public var action: String?
    public var issue: Issue?
    public var comment: Comment?

    public enum CodingKeys: String, CodingKey {
        case action
        case issue
        case comment
    }
}

public struct MemberPayload: Payload {
    public var action: String?
    public var member: User?

    public enum CodingKeys: String, CodingKey {
        case action
        case member
    }
}

public enum CreateEventType: String, Codable {
    case repository
    case branch
    case tag
}

public struct CreatePayload: Payload {
    public var ref: String?
    public var refType: CreateEventType = .repository
    public var masterBranch: String?
    public var description: String?
    public var pusherType: String?

    public enum CodingKeys: String, CodingKey {
        case ref
        case refType = "ref_type"
        case masterBranch = "master_branch"
        case description
        case pusherType = "pusher_type"
    }
}

public enum DeleteEventType: String, Codable {
    case repository
    case branch
    case tag
}

public struct IssuesPayload: Payload {
    public var action: String?
    public var issue: Issue?
    public var repository: Repository?

    public enum CodingKeys: String, CodingKey {
        case action
        case issue
        case repository = "forkee"
    }
}

public struct PullRequestReviewCommentPayload: Payload {
    public var action: String?
    public var comment: Comment?
    public var pullRequest: PullRequest?

    public enum CodingKeys: String, CodingKey {
        case action
        case comment
        case pullRequest = "pull_request"
    }
}

public struct PushPayload: Payload {
    public var ref: String?
    public var size: Int?
    public var commits: [Commit] = []

    public enum CodingKeys: String, CodingKey {
        case ref
        case size
        case commits
    }
}

public struct ReleasePayload: Payload {
    public var action: String?
    public var release: Release?

    public enum CodingKeys: String, CodingKey {
        case action
        case release
    }
}

public struct PullRequestPayload: Payload {
    public var action: String?
    public var number: Int?
    public var pullRequest: PullRequest?

    public enum CodingKeys: String, CodingKey {
        case action
        case number
        case pullRequest = "pull_request"
    }
}

public struct StarPayload: Payload {
    public var action: String?

    public enum CodingKeys: String, CodingKey {
        case action
    }
}
