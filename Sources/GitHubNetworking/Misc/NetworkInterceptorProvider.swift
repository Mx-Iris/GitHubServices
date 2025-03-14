import Foundation
import Apollo
import ApolloAPI
import GitHubModels

package class NetworkInterceptorProvider: DefaultInterceptorProvider {
    package let token: Token?
    
    package init(client: URLSessionClient = URLSessionClient(), store: ApolloStore, token: Token?) {
        self.token = token
        super.init(client: client, shouldInvalidateClientOnDeinit: true, store: store)
    }

    package override func interceptors(for operation: some GraphQLOperation) -> [ApolloInterceptor] {
        var interceptors = super.interceptors(for: operation)
        interceptors.insert(TokenAddingInterceptor(token: token), at: 0)
        return interceptors
    }
}
