import RxSwift
import RxCocoa
import Foundation
import GitHubModels
import GitHubServices

extension ExportService: ReactiveCompatible {}

extension Reactive where Base: ExportService {
    public func exportCurrentUserStarredRepositories(for exporter: RepositoriesExporter, destinationURL: URL) -> Observable<Void> {
        .create { observer in
//            base.exportCurrentUserStarredRepositories(for: exporter, destinationURL: destinationURL, options: options) { result in
//                switch result {
//                case .success:
//                    observer.onNext(())
//                    observer.onCompleted()
//                case let .failure(error):
//                    observer.onError(error)
//                }
//            }
            
            let task = Task {
                do {
                    try await base.exportCurrentUserStarredRepositories(for: exporter, destinationURL: destinationURL)
                    observer.onNext(())
                    observer.onCompleted()
                } catch {
                    observer.onError(error)
                }
            }
            
            return Disposables.create {
                task.cancel()
            }
        }
    }
}
