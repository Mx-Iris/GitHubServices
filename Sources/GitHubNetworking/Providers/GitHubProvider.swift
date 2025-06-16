import Foundation
import Moya
import GitHubModels

struct GitHubProvider: Provider {
    typealias T = GithubTarget
    let provider: OnlineProvider<T>

    static func defaultProvider() -> Self {
        GitHubProvider(provider: newProvider(plugins))
    }

    static func defaultProvider(token: Token? = nil) -> Self {
        var plugins: [PluginType] = plugins
        if let token {
            plugins.append(TokenPlugin(token: token))
        }
        return GitHubProvider(provider: newProvider(plugins))
    }

    static func stubbingProvider() -> Self {
        GitHubProvider(
            provider: OnlineProvider(
                endpointClosure: endpointsClosure(),
                requestClosure: GitHubProvider.endpointResolver(),
                stubClosure: MoyaProvider.immediatelyStub,
                plugins: plugins
            )
        )
    }

    @discardableResult
    func request(
        _ target: T,
        callbackQueue: DispatchQueue? = nil,
        progress: ProgressBlock? = nil,
        completion: @escaping (Result<Moya.Response, Error>) -> Void
    ) -> Cancellable {
        provider.request(target, callbackQueue: callbackQueue, progress: progress, completion: completion)
    }
}
