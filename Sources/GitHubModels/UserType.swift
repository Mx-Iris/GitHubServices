import Foundation

public enum UserType: String, CaseIterable, Codable, Hashable, Sendable {
    case user = "User"
    case organization = "Organization"
}
