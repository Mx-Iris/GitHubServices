import RxSwift
import RxCocoa
import Foundation
import GitHubServices

extension Cloner: ReactiveCompatible {}

extension Reactive where Base: Cloner {
    public func clone(to localURL: URL) -> Observable<Cloner.ProgressOrResult> {
        .create { observer in
            base.clone(to: localURL) { result in
                switch result {
                case let .success(resultOrProgress):
                    switch resultOrProgress {
                    case let .progress(progress):
                        observer.onNext(.progress(progress))
                    case let .result(result):
                        observer.onNext(.result(result))
                        observer.onCompleted()
                    }
                case let .failure(error):
                    observer.onError(error)
                    observer.onCompleted()
                }
            }
            return Disposables.create()
        }
    }
}
