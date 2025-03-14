import Moya
import Foundation
import GitHubModels

package struct TokenPlugin: PluginType {
    package let token: Token

    package init(token: Token) {
        self.token = token
    }

    package func prepare(_ request: URLRequest, target: TargetType) -> URLRequest {
        var request = request
        if let authorizationStringValue = token.authorizationStringValue {
            request.addValue(authorizationStringValue, forHTTPHeaderField: "Authorization")
        }
        return request
    }
}
