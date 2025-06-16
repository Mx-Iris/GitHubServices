import Moya
import RxMoya
import RxSwift
import RxCocoa
import Foundation
import GitHubNetworking

class RxOnlineProvider<Target> where Target: Moya.TargetType {
    let provider: MoyaProvider<Target>

    init(
        endpointClosure: @escaping MoyaProvider<Target>.EndpointClosure = MoyaProvider<Target>.defaultEndpointMapping,
        requestClosure: @escaping MoyaProvider<Target>.RequestClosure = MoyaProvider<Target>.defaultRequestMapping,
        stubClosure: @escaping MoyaProvider<Target>.StubClosure = MoyaProvider<Target>.neverStub,
        session: Session = MoyaProvider<Target>.defaultAlamofireSession(),
        plugins: [PluginType] = [],
        trackInflights: Bool = false
    ) {
        self.provider = MoyaProvider(endpointClosure: endpointClosure, requestClosure: requestClosure, stubClosure: stubClosure, session: session, plugins: plugins, trackInflights: trackInflights)
    }

    func request(_ token: Target) -> Observable<Moya.Response> {
        provider.rx.request(token)
            .filterSuccessfulStatusCodes()
            .catch { error in
                let errorResponse = error as? MoyaError
                if let errorResponse = try errorResponse?.response?.map(ErrorResponse.self) {
                    return .error(APIError.serverError(response: errorResponse))
                }
                return .error(error)
            }
            .asObservable()
    }
}
