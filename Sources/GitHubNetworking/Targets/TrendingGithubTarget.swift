import Moya
import Foundation

package enum TrendingGithubTarget {
    case trendingRepositories(language: String, since: String)
    case trendingDevelopers(language: String, since: String)
    case languages
}

extension TrendingGithubTarget: TargetType {
    package var baseURL: URL {
        Configs.Network.trendingGithubBaseURL
    }

    package var path: String {
        switch self {
        case .trendingRepositories: "/repositories"
        case .trendingDevelopers: "/developers"
        case .languages: "/languages"
        }
    }

    package var method: Moya.Method {
        switch self {
        default:
            .get
        }
    }

    package var headers: [String: String]? {
        nil
    }

    package var parameters: [String: Any]? {
        var params: [String: Any] = [:]
        switch self {
        case let .trendingRepositories(language, since),
             let .trendingDevelopers(language, since):
            params["language"] = language
            params["since"] = since
        default: break
        }
        return params
    }

    package var parameterEncoding: ParameterEncoding {
        URLEncoding.default
    }

    package var task: Task {
        if let parameters {
            return .requestParameters(parameters: parameters, encoding: parameterEncoding)
        }
        return .requestPlain
    }

}
