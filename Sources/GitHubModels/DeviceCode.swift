import Foundation

/// Response of `POST https://github.com/login/device/code`, the first leg of the OAuth Device Flow.
///
/// The host application is expected to display ``userCode`` and direct the user to
/// ``verificationURI`` in a browser, then poll for an access token using ``deviceCode``.
public struct DeviceCode: Codable, Sendable, Equatable {
    /// The device verification code shared between the device and the authorization server.
    /// Used as the polling key when exchanging for an access token. Must not be shown to the user.
    public let deviceCode: String

    /// A short, human-readable code the user types at ``verificationURI``.
    public let userCode: String

    /// The URL the user must visit to enter ``userCode`` (typically `https://github.com/login/device`).
    public let verificationURI: URL

    /// Lifetime of this device authorization, in seconds. After this elapses the user must restart the flow.
    public let expiresIn: TimeInterval

    /// Minimum number of seconds the client must wait between polling requests.
    /// May be increased by the server via a `slow_down` error response.
    public let interval: TimeInterval

    public init(
        deviceCode: String,
        userCode: String,
        verificationURI: URL,
        expiresIn: TimeInterval,
        interval: TimeInterval
    ) {
        self.deviceCode = deviceCode
        self.userCode = userCode
        self.verificationURI = verificationURI
        self.expiresIn = expiresIn
        self.interval = interval
    }

    enum CodingKeys: String, CodingKey, Sendable {
        case deviceCode = "device_code"
        case userCode = "user_code"
        case verificationURI = "verification_uri"
        case expiresIn = "expires_in"
        case interval
    }
}
