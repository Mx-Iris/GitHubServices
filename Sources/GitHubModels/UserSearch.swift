import Foundation

/// UserSearch model
public struct UserSearch: Codable {
    public var items: [User] = []
    public var totalCount: Int = 0
    public var incompleteResults: Bool = false
    public var hasNextPage: Bool = false
    public var endCursor: String?

    public init() {}

    enum CodingKeys: String, CodingKey {
        case items
        case totalCount = "total_count"
        case incompleteResults = "incomplete_results"
    }
}
