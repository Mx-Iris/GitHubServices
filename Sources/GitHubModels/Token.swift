import Foundation


public enum TokenType: Codable, Hashable {
    case basic(token: String)
    case personal(token: String)
    case oAuth(token: String)
    case unauthorized

    public var description: String {
        switch self {
        case .basic: "basic"
        case .personal: "personal"
        case .oAuth: "OAuth"
        case .unauthorized: "unauthorized"
        }
    }
}

public struct Token: Codable {
//    public var isValid = false

    /// Basic
    public var basicToken: String?

    /// Personal Access Token
    public var personalToken: String?

    /// OAuth2
    public var accessToken: String?
    public var tokenType: String?
    public var scope: String?

    public init(basicToken: String) {
        self.basicToken = basicToken
    }

    public init(personalToken: String) {
        self.personalToken = personalToken
    }

    public init(accessToken: String) {
        self.accessToken = accessToken
    }
    
    enum CodingKeys: String, CodingKey {
//        case isValid = "valid"
        case basicToken = "basic_token"
        case personalToken = "personal_token"
        case accessToken = "access_token"
        case tokenType = "token_type"
        case scope
    }

    public var type: TokenType {
        if let token = basicToken {
            return .basic(token: token)
        }
        if let token = personalToken {
            return .personal(token: token)
        }
        if let token = accessToken {
            return .oAuth(token: token)
        }
        return .unauthorized
    }
    
    
    public var authorizationStringValue: String? {
        switch type {
        case let .basic(token):
            "Basic \(token)"
        case let .personal(token):
            "token \(token)"
        case let .oAuth(token):
            "Bearer \(token)"
        case .unauthorized:
            nil
        }
    }
}
