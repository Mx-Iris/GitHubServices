import Moya
import RxSwift
import Foundation
import GitHubNetworking
import GitHubModels

struct RxGitHubProvider: RxProvider {
    typealias T = GithubTarget
    let provider: RxOnlineProvider<T>

    static func defaultProvider() -> Self {
        RxGitHubProvider(provider: newProvider(plugins))
    }

    static func defaultProvider(token: Token? = nil) -> Self {
        var plugins: [PluginType] = plugins
        if let token {
            plugins.append(TokenPlugin(token: token))
        }
        return RxGitHubProvider(provider: newProvider(plugins))
    }

    static func stubbingProvider() -> Self {
        RxGitHubProvider(
            provider: RxOnlineProvider(
                endpointClosure: endpointsClosure(),
                requestClosure: RxGitHubProvider.endpointResolver(),
                stubClosure: MoyaProvider.immediatelyStub,
                plugins: plugins,
                online: .just(true)
            )
        )
    }

    func request(_ token: T) -> Observable<Moya.Response> {
        let actualRequest = provider.request(token)
        return actualRequest
    }
}
