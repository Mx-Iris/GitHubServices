import Foundation

// MARK: - Methods (Collection)

extension Optional where Wrapped: Collection {
    /// SwifterSwift: Check if optional is nil or empty collection.
    package var isNilOrEmpty: Bool {
        guard let collection = self else { return true }
        return collection.isEmpty
    }

    /// SwifterSwift: Returns the collection only if it is not nill and not empty.
    package var nonEmpty: Wrapped? {
        guard let collection = self else { return nil }
        guard !collection.isEmpty else { return nil }
        return collection
    }
}
