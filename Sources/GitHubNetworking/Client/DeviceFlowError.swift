import Foundation

/// Errors returned by the OAuth Device Flow token endpoint, as documented at
/// https://docs.github.com/en/apps/oauth-apps/building-oauth-apps/authorizing-oauth-apps#device-flow
public enum DeviceFlowError: Error, Equatable, Sendable {
    /// The user has not yet authorized the request. The client should keep polling at the current interval.
    case authorizationPending

    /// The client is polling too quickly. Increase the polling interval by 5 seconds and retry.
    case slowDown

    /// The `device_code` has expired before the user authorized. The flow must be restarted from scratch.
    case expiredToken

    /// The user explicitly denied the authorization request.
    case accessDenied

    /// The grant type used in the token request isn't supported.
    /// For the Device Flow on an OAuth App, this is the error you get when the App owner hasn't enabled Device Flow.
    case unsupportedGrantType

    /// `client_id` (and/or `client_secret`, when present) was rejected as malformed or invalid.
    case incorrectClientCredentials

    /// `device_code` was rejected by the server (malformed or unknown).
    case incorrectDeviceCode

    /// Device Flow is disabled on this OAuth App's settings page.
    case deviceFlowDisabled

    /// An error code returned by the server that isn't covered by the cases above.
    case other(code: String, description: String?)

    init(code: String, description: String?) {
        switch code {
        case "authorization_pending": self = .authorizationPending
        case "slow_down": self = .slowDown
        case "expired_token": self = .expiredToken
        case "access_denied": self = .accessDenied
        case "unsupported_grant_type": self = .unsupportedGrantType
        case "incorrect_client_credentials": self = .incorrectClientCredentials
        case "incorrect_device_code": self = .incorrectDeviceCode
        case "device_flow_disabled": self = .deviceFlowDisabled
        default: self = .other(code: code, description: description)
        }
    }
}

extension DeviceFlowError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .authorizationPending:
            return "Waiting for the user to authorize the request."
        case .slowDown:
            return "Polling too quickly; the server asked us to slow down."
        case .expiredToken:
            return "The device code expired before the user authorized. Please start the sign-in flow again."
        case .accessDenied:
            return "The user denied the authorization request."
        case .unsupportedGrantType:
            return "This OAuth App doesn't support the Device Flow grant type."
        case .incorrectClientCredentials:
            return "The client ID is invalid."
        case .incorrectDeviceCode:
            return "The device code was rejected by the server."
        case .deviceFlowDisabled:
            return "Device Flow is disabled in this OAuth App's settings."
        case let .other(code, description):
            return description ?? "OAuth Device Flow error: \(code)"
        }
    }
}
