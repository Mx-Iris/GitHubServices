import Moya
import RxSwift
import Foundation
import GitHubNetworking

struct RxCodetabsProvider: RxProvider {
    typealias T = CodetabsTarget
    let provider: RxOnlineProvider<T>

    static func defaultProvider() -> Self {
        RxCodetabsProvider(provider: newProvider(plugins))
    }

    static func stubbingProvider() -> Self {
        RxCodetabsProvider(provider: RxOnlineProvider(endpointClosure: endpointsClosure(), requestClosure: RxCodetabsProvider.endpointResolver(), stubClosure: MoyaProvider.immediatelyStub))
    }

    func request(_ token: T) -> Observable<Moya.Response> {
        let actualRequest = provider.request(token)
        return actualRequest
    }
}
