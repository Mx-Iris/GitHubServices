import Foundation

extension String {
    var fromBase64: String? {
        guard let data = Data(base64Encoded: self) else {
            return nil
        }

        return String(data: data, encoding: .utf8)
    }

    var toBase64: String {
        let encodedContent = Data(utf8).base64EncodedString()
        return encodedContent
    }
}
