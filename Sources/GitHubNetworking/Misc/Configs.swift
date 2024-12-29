import Foundation

package enum Configs {
    package enum Network {
        package static let useStaging = false // set true for tests and generating screenshots with fastlane
        package static let loggingEnabled = false
        package static let githubRestBaseURL = URL(string: "https://api.github.com")!
        package static let githubGraphQLBaseURL = URL(string: "https://api.github.com/graphql")!
        package static let trendingGithubBaseURL = URL(string: "https://gtrend.yapie.me")!
        package static let codetabsBaseURL = URL(string: "https://api.codetabs.com/v1")!
    }
}
