import Foundation
import Network

package class ReachabilityManager: NSObject {
    package static let shared = ReachabilityManager()

    package var observer: (Bool) -> Void = { _ in }

    package static func connectedToInternetObserving() -> () -> Bool {
        return {
            NetworkMonitor.shared.isConnected
        }
    }

    private override init() {
        super.init()

        NetworkMonitor.shared.startMonitoring()
        NetworkMonitor.shared.statusChangeHandler = { [weak self] _ in
            guard let self else { return }
            observer(NetworkMonitor.shared.isConnected)
        }
    }
}

class NetworkMonitor {
    // 单例模式，方便全局访问
    static let shared = NetworkMonitor()

    private var monitor: NWPathMonitor?
    private var monitorQueue = DispatchQueue(label: "com.networkmonitor.queue")

    // 网络状态变化闭包
    var statusChangeHandler: ((Bool) -> Void)?

    // 网络连接状态属性
    var isConnected: Bool {
        guard let monitor = monitor else { return false }
        return monitor.currentPath.status == .satisfied
    }

    init() {
        startMonitoring()
    }

    deinit {
        stopMonitoring()
    }

    func startMonitoring() {
        guard monitor == nil else { return }

        monitor = NWPathMonitor()

        monitor?.pathUpdateHandler = { [weak self] path in
            guard let self = self else { return }
            // 在主线程调用状态变化处理程序
            DispatchQueue.main.async {
                self.statusChangeHandler?(path.status != .satisfied)
            }
        }

        monitor?.start(queue: monitorQueue)
    }

    func stopMonitoring() {
        monitor?.cancel()
        monitor = nil
    }
}
