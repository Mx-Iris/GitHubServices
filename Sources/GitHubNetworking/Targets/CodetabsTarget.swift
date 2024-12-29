import Moya
import Foundation

package enum CodetabsTarget {
    case numberOfLines(fullname: String)
}

extension CodetabsTarget: TargetType {
    package var baseURL: URL {
        Configs.Network.codetabsBaseURL
    }

    package var path: String {
        switch self {
        case .numberOfLines: "/loc"
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
        case let .numberOfLines(fullname):
            params["github"] = fullname
        }
        return params
    }

    package var parameterEncoding: ParameterEncoding {
        URLEncoding.default
    }

//    var sampleData: Data {
//        var dataUrl: URL?
//        switch self {
//        case .numberOfLines: dataUrl = R.file.repositoryNumberOfLinesJson()
//        }
//        if let url = dataUrl, let data = try? Data(contentsOf: url) {
//            return data
//        }
//        return Data()
//    }

    package var task: Task {
        if let parameters {
            return .requestParameters(parameters: parameters, encoding: parameterEncoding)
        }
        return .requestPlain
    }
}
