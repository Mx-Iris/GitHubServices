import Alamofire
import Foundation

package class ReachabilityManager: NSObject {
    package static let shared = ReachabilityManager()

    package var observer: (Bool) -> Void = { _ in }

    package static func connectedToInternetObserving() -> () -> Bool {
        return {
            NetworkReachabilityManager.default?.isReachable ?? false
        }
    }

    private override init() {
        super.init()

        NetworkReachabilityManager.default?.startListening(onUpdatePerforming: { [weak self] status in
            guard let self else { return }
            switch status {
            case .notReachable,
                 .unknown:
                observer(false)
            case .reachable:
                observer(true)
            }
        })
    }
}
