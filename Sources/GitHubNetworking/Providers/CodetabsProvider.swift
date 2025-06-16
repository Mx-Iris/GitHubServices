import Moya
import Foundation

struct CodetabsProvider: Provider {
    typealias T = CodetabsTarget
    let provider: OnlineProvider<T>

    static func defaultProvider() -> Self {
        CodetabsProvider(provider: newProvider(plugins))
    }

    static func stubbingProvider() -> Self {
        CodetabsProvider(provider: OnlineProvider(endpointClosure: endpointsClosure(), requestClosure: CodetabsProvider.endpointResolver(), stubClosure: MoyaProvider.immediatelyStub))
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
