import Foundation
import GitHubModels

extension Committer {
    enum Key: String {
        case committer
        case author
    }
    
    func asParameter(_ key: Key) -> AnyAPIParameter {
        AnyAPIParameter(key: key.rawValue, value: asDictionary())
    }
    
    func asDictionary() -> [String: Any] {
        var dict = [String: Any]()
        dict["name"] = name
        dict["email"] = email
        if let date {
            dict["date"] = date
        }
        return dict
    }
}
