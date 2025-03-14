import Moya
import Foundation

final class OnlineProvider<Target> where Target: Moya.TargetType {
    let online: () -> Bool
    let provider: MoyaProvider<Target>

    init(
        endpointClosure: @escaping MoyaProvider<Target>.EndpointClosure = MoyaProvider<Target>.defaultEndpointMapping,
        requestClosure: @escaping MoyaProvider<Target>.RequestClosure = MoyaProvider<Target>.defaultRequestMapping,
        stubClosure: @escaping MoyaProvider<Target>.StubClosure = MoyaProvider<Target>.neverStub,
        session: Session = MoyaProvider<Target>.defaultAlamofireSession(),
        plugins: [PluginType] = [],
        trackInflights: Bool = false,
        online: (() -> Bool)? = nil
    ) {
        self.online = online ?? ReachabilityManager.connectedToInternetObserving()
        self.provider = MoyaProvider(endpointClosure: endpointClosure, requestClosure: requestClosure, stubClosure: stubClosure, session: session, plugins: plugins, trackInflights: trackInflights)
    }

    @discardableResult
    func request(
        _ target: Target,
        callbackQueue: DispatchQueue? = nil,
        progress: ProgressBlock? = nil,
        completion: @escaping (Result<Moya.Response, Error>) -> Void
    ) -> Cancellable {
        guard online() else { return CancellableToken(action: {}) }
        return provider.request(target, callbackQueue: callbackQueue, progress: progress) { result in

            do {
                switch result {
                case let .success(response):
                    let filteredResponse = try response.filterSuccessfulStatusCodes()
                    completion(.success(filteredResponse))
                case let .failure(error):
                    completion(.failure(error))
                }
            } catch {
                if let moyaError = error as? MoyaError,
                    let moyaResponse = moyaError.response,
                    let errorResponse = try? moyaResponse.map(ErrorResponse.self) {
                    if moyaResponse.statusCode == 404 {
                        completion(.failure(APIError.resourceNotFound(response: errorResponse)))
                    } else {
                        completion(.failure(APIError.serverError(response: errorResponse)))
                    }
                } else {
                    completion(.failure(error))
                }
            }
        }
    }
}
