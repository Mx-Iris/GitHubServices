import Foundation

public enum UserType: String, CaseIterable, Codable, Hashable {
    case user = "User"
    case organization = "Organization"
}
