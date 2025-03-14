import Foundation
import ArrayBuilderModule

public enum APIParameter: APIParameterType {
    case numberOfPerPage(Int)
    case page(Int)
    case before(Date)
    case since(Date)
    case query(String)
    case order(String)
    case ref(String?)
    case state(String)

    var key: String {
        switch self {
        case .before:
            return "before"
        case .since:
            return "since"
        case .numberOfPerPage:
            return "per_page"
        case .page:
            return "page"
        case .query:
            return "q"
        case .ref:
            return "ref"
        case .state:
            return "state"
        case .order:
            return "order"
        }
    }

    var value: Any? {
        switch self {
        case let .before(date): return date
        case let .since(date): return date
        case let .numberOfPerPage(int): return int
        case let .page(int): return int
        case let .query(string): return string
        case let .ref(s): return s
        case let .state(s): return s
        case let .order(s): return s
        }
    }

    /// Limit results to repositories with the specified visibility.
    /// Default: `all`
    /// Can be one of: `all`, `public`, `private`
    public enum Visibility: String, APIParameterType {
        case all
        case `public`
        case `private`
        var key: String { "visibility" }
        var value: Any? { rawValue }
    }

    /// Comma-separated list of values. Can include:
    /// `owner`: Repositories that are owned by the authenticated user.
    /// `collaborator`: Repositories that the user has been added to as a collaborator.
    /// `organization_member`: Repositories that the user has access to through being a member of an organization. This includes every repository on every team that the user is on.
    /// Default: `owner,collaborator,organization_member`
    public enum Affiliation: String, CaseIterable, APIParameterType {
        case owner
        case collaborator
        case organizationMember = "organization_member"
        var key: String { "affiliation" }
        var value: Any? { rawValue }
    }

    /// Limit results to repositories of the specified type. Will cause a 422 error if used in the same request as visibility or affiliation.
    ///
    /// Default: all
    ///
    /// Can be one of: all, owner, public, private, member
    public enum RepositoriesType: String, APIParameterType {
        case all
        case owner
        case `public`
        case `private`
        case member
        var key: String { "type" }
        var value: Any? { rawValue }
    }

    /// The property to sort the results by.
    ///
    /// Default: full_name
    ///
    /// Can be one of: created, updated, pushed, full_name
    public enum Sort: String, APIParameterType {
        case created
        case updated
        case pushed
        case fullname = "full_name"
        var key: String { "sort" }
        var value: Any? { rawValue }
    }

    /// The order to sort by. Default: asc when using full_name, otherwise desc.
    ///
    /// Can be one of: asc, desc
    public enum Direction: String, APIParameterType {
        case asc
        case desc
        var key: String { "direction" }
        var value: Any? { rawValue }
    }

    public enum Filter {
        case type(RepositoriesType?)
        case visibilityAndAffiliation(Visibility?, [Affiliation]?)
    }
}

protocol APIParameterType {
    var key: String { get }
    var value: Any? { get }
}

struct NullAPIParameter: APIParameterType {
    var key: String { "" }
    var value: Any? { nil }
}

struct AnyAPIParameter: APIParameterType {
    let key: String
    let value: Any?
}

enum APIParameterBuilder {
    static func build(_ params: inout [String: Any], @ArrayBuilder<APIParameterType?> _ builder: () -> [APIParameterType?]) {
        builder().compactMap { $0 }.forEach { apiParameter in
            if let value = apiParameter.value {
                params.updateValue(value, forKey: apiParameter.key)
            }
        }
    }
    
    static func build(@ArrayBuilder<APIParameterType?> _ builder: () -> [APIParameterType?]) -> [String: Any] {
        var params: [String: Any] = [:]
        build(&params, builder)
        return params
    }
    
}

