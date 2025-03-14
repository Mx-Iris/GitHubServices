import Moya
import Foundation
import GitHubNetworking

protocol RxProvider {
    associatedtype T: Moya.TargetType
    var provider: RxOnlineProvider<T> { get }

    static func defaultProvider() -> Self
    static func stubbingProvider() -> Self
}

extension RxProvider {
    static func newProvider<T>(_ plugins: [PluginType]) -> RxOnlineProvider<T> {
        RxOnlineProvider(
            endpointClosure: endpointsClosure(),
            requestClosure: endpointResolver(),
            stubClosure: APIKeysBasedStubBehaviour,
            plugins: plugins
        )
    }
}

extension RxProvider {
    static func endpointsClosure<T>() -> (T) -> Endpoint where T: TargetType {
        return { target in
            MoyaProvider.defaultEndpointMapping(for: target)
        }
    }

    static func APIKeysBasedStubBehaviour(_: some Any) -> Moya.StubBehavior {
        .never
    }

    static var plugins: [PluginType] {
        var plugins: [PluginType] = []
        if Configs.Network.loggingEnabled == true {
            plugins.append(NetworkLoggerPlugin())
        }
        return plugins
    }

    /// (Endpoint<Target>, NSURLRequest -> Void) -> Void
    static func endpointResolver() -> MoyaProvider<T>.RequestClosure {
        { endpoint, closure in
            do {
                var request = try endpoint.urlRequest() // endpoint.urlRequest
                request.httpShouldHandleCookies = false
                closure(.success(request))
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}
