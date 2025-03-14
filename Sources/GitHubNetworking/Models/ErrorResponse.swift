import Foundation

public struct ErrorResponse: Codable {
    public var message: String?
    public var errors: [ErrorModel]?
    public var documentationUrl: String?

    public init() {}

    enum CodingKeys: String, CodingKey {
        case message
        case errors
        case documentationUrl = "documentation_url"
    }

    public func detail() -> String {
        (errors ?? []).map { $0.message ?? "" }
            .joined(separator: "\n")
    }
}

public struct ErrorModel: Codable {
    public var code: String?
    public var message: String?
    public var field: String?
    public var resource: String?

    public init() {}
}
