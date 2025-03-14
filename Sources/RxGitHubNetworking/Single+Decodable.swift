import Moya
import RxSwift
import Foundation

extension PrimitiveSequence where Trait == SingleTrait, Element == Response {
    /// Maps data received from the signal into an object
    /// which implements the Mappable protocol and returns the result back
    /// If the conversion fails, the signal errors.
    func decodeObject<T: Decodable>(_ type: T.Type) -> Single<T> {
        flatMap { response -> Single<T> in
            try Single.just(response.map(T.self))
        }
    }

    /// Maps data received from the signal into an array of objects
    /// which implement the Mappable protocol and returns the result back
    /// If the conversion fails, the signal errors.
    func decodeArray<T: Decodable>(_ type: T.Type) -> Single<[T]> {
        flatMap { response -> Single<[T]> in
            try Single.just(response.map([T].self))
        }
    }

    /// Maps data received from the signal into an object
    /// which implements the Mappable protocol and returns the result back
    /// If the conversion fails, the signal errors.
    func decodeObject<T: Decodable>(_ type: T.Type, atKeyPath keyPath: String) -> Single<T> {
        flatMap { response -> Single<T> in
            try Single.just(response.map(T.self, atKeyPath: keyPath))
        }
    }

    /// Maps data received from the signal into an array of objects
    /// which implement the Mappable protocol and returns the result back
    /// If the conversion fails, the signal errors.
    func decodeArray<T: Decodable>(_ type: T.Type, atKeyPath keyPath: String) -> Single<[T]> {
        flatMap { response -> Single<[T]> in
            try Single.just(response.map([T].self, atKeyPath: keyPath))
        }
    }
}
