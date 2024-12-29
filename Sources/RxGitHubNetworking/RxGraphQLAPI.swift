import RxSwift
import GitHubModels
import GitHubGraphQLAPI

public protocol RxGraphQLAPI {
    func userLists(login: String, first: Int?, after: String?, skipSuggestions: Bool?) -> Maybe<[UserList]>
    func list(username: String, slug: String, first: Int?, after: String?, avatarSize: Int) -> Maybe<List>
}


