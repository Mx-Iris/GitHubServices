import Foundation

public struct ContributionCalendar: Codable, Hashable {
    public struct Month: Codable, Hashable {
        public var name: String?
        public init(name: String? = nil) {
            self.name = name
        }
    }

    public struct ContributionDay: Codable, Hashable {
        public var color: String?
        public var contributionCount: Int?
        public init(color: String? = nil, contributionCount: Int? = nil) {
            self.color = color
            self.contributionCount = contributionCount
        }
    }

    public var totalContributions: Int?
    public var months: [Month]?
    public var weeks: [[ContributionDay]]?

    public init() {}
}
