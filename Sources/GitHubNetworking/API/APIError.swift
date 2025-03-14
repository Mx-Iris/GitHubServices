import Foundation

public enum APIError: Error {
    case serverError(response: ErrorResponse)
    case resourceNotFound(response: ErrorResponse)

    public var title: String {
        switch self {
        case let .serverError(response), let .resourceNotFound(response): response.message ?? ""
        }
    }

    public var description: String {
        switch self {
        case let .serverError(response), let .resourceNotFound(response): response.detail()
        }
    }
}
