import Foundation
import GitHubModels
import GitHubServicesHelpers

@AddAsyncAllMembers
public protocol GraphQLAPI {
//    @AddAsyncInterface
    func userLists(login: String, first: Int?, after: String?, skipSuggestions: Bool?, completion: @escaping (Result<[UserList]?, Error>) -> Void)
}

