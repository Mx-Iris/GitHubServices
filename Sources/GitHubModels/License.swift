import Foundation
import MetaCodable

@Codable
@MemberInit
public struct License: Codable, Hashable, Sendable {
    public var key: String?
    public var name: String?
    @CodedAt("node_id")
    public var nodeID: String?
    @CodedAt("spdx_id")
    public var spdxID: String?
    public var url: URL?
}
