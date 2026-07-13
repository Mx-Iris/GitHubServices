import Foundation

public struct PaginatedResponse<Element> {
    public let elements: [Element]
    public let nextPageNumber: Int?
    public let lastPageNumber: Int?
    public let entityTag: String?
    public let isNotModified: Bool

    public init(
        elements: [Element],
        nextPageNumber: Int?,
        lastPageNumber: Int?,
        entityTag: String?,
        isNotModified: Bool
    ) {
        self.elements = elements
        self.nextPageNumber = nextPageNumber
        self.lastPageNumber = lastPageNumber
        self.entityTag = entityTag
        self.isNotModified = isNotModified
    }
}

struct PaginationLinkHeader {
    let nextPageNumber: Int?
    let lastPageNumber: Int?

    init(headerValue: String?) {
        nextPageNumber = Self.pageNumber(for: "next", in: headerValue)
        lastPageNumber = Self.pageNumber(for: "last", in: headerValue)
    }

    private static func pageNumber(for relation: String, in headerValue: String?) -> Int? {
        guard let headerValue else { return nil }

        for linkComponent in headerValue.split(separator: ",") {
            let componentSections = linkComponent.split(separator: ";")
            guard componentSections.count >= 2 else { continue }

            let relationSection = componentSections.dropFirst()
                .map { $0.trimmingCharacters(in: .whitespaces) }
                .first { $0 == "rel=\"\(relation)\"" }
            guard relationSection != nil else { continue }

            let addressSection = componentSections[0].trimmingCharacters(in: .whitespaces)
            guard addressSection.hasPrefix("<"), addressSection.hasSuffix(">") else { continue }

            let addressString = String(addressSection.dropFirst().dropLast())
            guard let addressComponents = URLComponents(string: addressString),
                  let pageValue = addressComponents.queryItems?.first(where: { $0.name == "page" })?.value,
                  let pageNumber = Int(pageValue) else {
                continue
            }

            return pageNumber
        }

        return nil
    }
}
