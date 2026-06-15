import Foundation
import GitHubModels
import GitHubServicesHelpers

@AddAsyncAllMembers
public protocol GraphQLAPI {
    func userLists(login: String, first: Int?, after: String?, skipSuggestions: Bool?, completion: @escaping (Result<[UserList]?, Error>) -> Void)
    func list(username: String, slug: String, first: Int?, after: String?, avatarSize: Int, completion: @escaping (Result<List?, Error>) -> Void)
}

