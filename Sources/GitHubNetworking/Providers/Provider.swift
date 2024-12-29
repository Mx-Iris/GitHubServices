import Foundation
import Moya

protocol Provider {
    associatedtype T: Moya.TargetType
    var provider: OnlineProvider<T> { get }

    static func defaultProvider() -> Self
    static func stubbingProvider() -> Self
}

extension Provider {
   static func newProvider<T>(_ plugins: [PluginType]) -> OnlineProvider<T> {
        OnlineProvider(
            endpointClosure: endpointsClosure(),
            requestClosure: endpointResolver(),
            stubClosure: APIKeysBasedStubBehaviour,
            plugins: plugins
        )
    }
}

extension Provider {
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
