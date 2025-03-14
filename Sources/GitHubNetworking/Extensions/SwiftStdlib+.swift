import Foundation

extension Int {
    package var string: String {
        .init(self)
    }
}

extension String {
    package var url: URL? {
        .init(string: self)
    }
}
