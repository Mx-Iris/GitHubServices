import Foundation
import MetaCodable

public enum ContentType: String, Codable {
    case file
    case dir
    case symlink
    case submodule
    case unknown = ""
}

extension ContentType: Comparable {
    public func priority() -> Int {
        switch self {
        case .file: 0
        case .dir: 1
        case .symlink: 2
        case .submodule: 3
        case .unknown: 4
        }
    }

    public static func < (lhs: ContentType, rhs: ContentType) -> Bool {
        lhs.priority() < rhs.priority()
    }
}

@Codable
@MemberInit
public struct Content {
    public var type: ContentType
    public var size: Int
    public var name: String
    public var path: String
    public var sha: String
    public var url: URL
    @Default([])
    public var entries: [Content]
    public var content: String?
    @CodedAt("download_url")
    public var downloadURL: URL?
    @CodedAt("git_url")
    public var gitURL: URL?
    @CodedAt("html_url")
    public var htmlURL: URL?
}
