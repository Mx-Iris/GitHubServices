import Moya
import RxMoya
import RxSwift
import RxCocoa
import Alamofire
import Foundation
import GitHubNetworking

class RxOnlineProvider<Target> where Target: Moya.TargetType {
    let online: Observable<Bool>
    let provider: MoyaProvider<Target>

    init(
        endpointClosure: @escaping MoyaProvider<Target>.EndpointClosure = MoyaProvider<Target>.defaultEndpointMapping,
        requestClosure: @escaping MoyaProvider<Target>.RequestClosure = MoyaProvider<Target>.defaultRequestMapping,
        stubClosure: @escaping MoyaProvider<Target>.StubClosure = MoyaProvider<Target>.neverStub,
        session: Session = MoyaProvider<Target>.defaultAlamofireSession(),
        plugins: [PluginType] = [],
        trackInflights: Bool = false,
        online: Observable<Bool>? = nil
    ) {
        self.online = online ?? RxReachabilityManager.connectedToInternet()
        self.provider = MoyaProvider(endpointClosure: endpointClosure, requestClosure: requestClosure, stubClosure: stubClosure, session: session, plugins: plugins, trackInflights: trackInflights)
    }

    func request(_ token: Target) -> Observable<Moya.Response> {
        let actualRequest = provider.rx.request(token)
        return online
            .ignore(value: false) // Wait until we're online
            .take(1) // Take 1 to make sure we only invoke the API once.
            .flatMap { _ in // Turn the online state into a network request
                actualRequest.filterSuccessfulStatusCodes()
                    .catch { error in
                        let errorResponse = error as? MoyaError

                        if let errorResponse = try errorResponse?.response?.map(ErrorResponse.self) {
                            return .error(APIError.serverError(response: errorResponse))
                        }
                        return .error(error)
                    }
            }
    }
}

class RxReachabilityManager: NSObject {
    static let shared = RxReachabilityManager()

    let reachableSubject = ReplaySubject<Bool>.create(bufferSize: 1)

    static func connectedToInternet() -> Observable<Bool> {
        shared.reachableSubject.asObservable()
    }

    private override init() {
        super.init()

        NetworkReachabilityManager.default?.startListening(onUpdatePerforming: { [weak self] status in
            guard let self else { return }
            switch status {
            case .notReachable,
                 .unknown:
                reachableSubject.onNext(false)
            case .reachable:
                reachableSubject.onNext(true)
            }
        })
    }
}
