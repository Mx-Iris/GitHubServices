import Apollo
import ApolloAPI
import Foundation
import GitHubModels

package class TokenAddingInterceptor: ApolloInterceptor {
    package let token: Token?

    package var id: String = UUID().uuidString

    package init(token: Token?) {
        self.token = token
    }

    package func interceptAsync<Operation: GraphQLOperation>(
        chain: RequestChain,
        request: HTTPRequest<Operation>,
        response: HTTPResponse<Operation>?,
        completion: @escaping (Result<GraphQLResult<Operation.Data>, Error>) -> Void
    ) {
        if let authorizationStringValue = token?.authorizationStringValue {
            request.addHeader(name: "Authorization", value: authorizationStringValue)
        }

        chain.proceedAsync(
            request: request,
            response: response,
            interceptor: self,
            completion: completion
        )
    }
}
