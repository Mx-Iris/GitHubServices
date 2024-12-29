import Foundation

public struct Language: Codable, Hashable {
    public var urlParam: String?
    public var name: String?

    public init() {}

    public func displayName() -> String {
        (name.map(\.isEmpty) == false ? name : urlParam) ?? ""
    }
}

extension Language: Equatable {
    public static func == (lhs: Language, rhs: Language) -> Bool {
        lhs.urlParam == rhs.urlParam
    }
}

public struct Languages: Codable, Hashable {
    public var totalCount: Int = 0
    public var totalSize: Int = 0
    public var languages: [RepoLanguage] = []

    public init() {}
}

public struct RepoLanguage: Codable, Hashable {
    public var size: Int = 0
    public var name: String?
    public var color: String?
    public init() {}
}

public struct LanguageLines: Codable, Hashable {
    public var language: String?
    public var files: Int?
    public var lines: Int?
    public var blanks: Int?
    public var comments: Int?
    public var linesOfCode: Int?

    public init() {}
}
