import Moya
import RxSwift
import Foundation
import GitHubNetworking

struct RxTrendingGitHubProvider: RxProvider {
    typealias T = TrendingGithubTarget
    let provider: RxOnlineProvider<T>

    static func defaultProvider() -> Self {
        RxTrendingGitHubProvider(provider: newProvider(plugins))
    }

    static func stubbingProvider() -> Self {
        RxTrendingGitHubProvider(provider: RxOnlineProvider(endpointClosure: endpointsClosure(), requestClosure: RxTrendingGitHubProvider.endpointResolver(), stubClosure: MoyaProvider.immediatelyStub, online: .just(true)))
    }

    func request(_ token: T) -> Observable<Moya.Response> {
        let actualRequest = provider.request(token)
        return actualRequest
    }
}
