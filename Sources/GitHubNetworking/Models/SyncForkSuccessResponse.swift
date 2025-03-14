import Foundation

public struct SyncForkSuccessResponse: Codable {
    public let message: String
    public let mergeType: String?
    public let baseBranch: String?

    private enum CodingKeys: String, CodingKey {
        case message
        case mergeType = "merge_type"
        case baseBranch = "base_branch"
    }
}
