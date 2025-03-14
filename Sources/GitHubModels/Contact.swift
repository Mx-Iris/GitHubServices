import Contacts
import Foundation
import MetaCodable

@Codable
@MemberInit
public struct Contact: Codable {
    public var id: String?
    public var name: String?
    public var phones: [String] = []
    @IgnoreCoding
    public var emails: [String] = []

    public var imageData: Data?

    public init(with contact: CNContact) {
        self.id = contact.identifier
        self.name = [contact.givenName, contact.familyName].joined(separator: " ")
        self.phones = contact.phoneNumbers.map(\.value.stringValue)
        self.emails = contact.emailAddresses.map { $0.value as String }
        self.imageData = contact.thumbnailImageData
    }
}
