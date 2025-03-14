import Moya
import RxSwift
import Foundation

extension ObservableType where Element == Response {
    /// Maps data received from the signal into an object
    /// which implements the Mappable protocol and returns the result back
    /// If the conversion fails, the signal errors.
    public func decodeObject<T: Decodable>(_ type: T.Type) -> Observable<T> {
        return flatMap { response -> Observable<T> in
            try Observable.just(response.map(T.self))
        }
    }

    /// Maps data received from the signal into an array of objects
    /// which implement the Mappable protocol and returns the result back
    /// If the conversion fails, the signal errors.
    public func decodeArray<T: Decodable>(_ type: T.Type) -> Observable<[T]> {
        return flatMap { response -> Observable<[T]> in
            try Observable.just(response.map([T].self))
        }
    }

    /// Maps data received from the signal into an object
    /// which implements the Mappable protocol and returns the result back
    /// If the conversion fails, the signal errors.
    public func decodeObject<T: Decodable>(_ type: T.Type, atKeyPath keyPath: String) -> Observable<T> {
        return flatMap { response -> Observable<T> in
            try Observable.just(response.map(T.self, atKeyPath: keyPath))
        }
    }

    /// Maps data received from the signal into an array of objects
    /// which implement the Mappable protocol and returns the result back
    /// If the conversion fails, the signal errors.
    public func decodeArray<T: Decodable>(_ type: T.Type, atKeyPath keyPath: String) -> Observable<[T]> {
        return flatMap { response -> Observable<[T]> in
            try Observable.just(response.map([T].self, atKeyPath: keyPath))
        }
    }
}
