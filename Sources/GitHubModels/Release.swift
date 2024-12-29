import Foundation
import MetaCodable
import HelperCoders

@Codable
@MemberInit
public struct Release: Codable {
    public var assets: [Asset]?
    @CodedAt("assets_url")
    public var assetsURL: URL?
    public var author: User?
    public var body: String?
    @CodedBy(ISO8601DateCoder())
    @CodedAt("created_at")
    public var createdAt: Date?
    public var draft: Bool?
    @CodedAt("html_url")
    public var htmlURL: URL?
    public var id: Int?
    public var name: String?
    @CodedAt("node_id")
    public var nodeId: String?
    public var prerelease: Bool?
    @CodedBy(ISO8601DateCoder())
    @CodedAt("published_at")
    public var publishedAt: Date?
    @CodedAt("tag_name")
    public var tagName: String?
    @CodedAt("tarball_url")
    public var tarballURL: URL?
    @CodedAt("target_commitish")
    public var targetCommitish: String?
    @CodedAt("upload_url")
    public var uploadURL: URL?
    public var url: URL?
    @CodedAt("zipball_url")
    public var zipballURL: URL?
}

@Codable
@MemberInit
public struct Asset: Codable {
    @CodedAt("browser_download_url")
    public var browserDownloadURL: URL?
    @CodedAt("content_type")
    public var contentType: String?
    @CodedBy(ISO8601DateCoder())
    @CodedAt("created_at")
    public var createdAt: Date?
    @CodedAt("download_count")
    public var downloadCount: Int?
    public var id: Int?
    public var label: String?
    public var name: String?
    @CodedAt("node_id")
    public var nodeID: String?
    public var size: Int?
    public var state: String?
    @CodedBy(ISO8601DateCoder())
    @CodedAt("updated_at")
    public var updatedAt: Date?
    public var uploader: User?
    public var url: URL?
}
