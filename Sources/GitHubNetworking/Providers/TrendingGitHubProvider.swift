import Moya
import Foundation

struct TrendingGitHubProvider: Provider {
    typealias T = TrendingGithubTarget
    let provider: OnlineProvider<T>

    static func defaultProvider() -> Self {
        TrendingGitHubProvider(provider: newProvider(plugins))
    }

    static func stubbingProvider() -> Self {
        TrendingGitHubProvider(provider: OnlineProvider(endpointClosure: endpointsClosure(), requestClosure: endpointResolver(), stubClosure: MoyaProvider.immediatelyStub, online: { true }))
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
