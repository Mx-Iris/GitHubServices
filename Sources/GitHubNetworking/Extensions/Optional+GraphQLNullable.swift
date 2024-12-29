import Foundation
import Apollo
import ApolloAPI

extension Optional {
    package var graphQLNullable: GraphQLNullable<Wrapped> {
        switch self {
        case .none:
            return .none
        case let .some(wrapped):
            return .some(wrapped)
        }
    }
}
