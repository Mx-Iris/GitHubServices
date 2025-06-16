import RxSwift
import RxCocoa
import Foundation
import GitHubModels
import GitHubNetworking

public protocol RxRestAPI {

    func searchRepositories(query: String, sort: String, order: String, page: Int, endCursor: String?) -> Single<RepositorySearch>
    func repository(fullname: String, qualifiedName: String) -> Single<Repository>
    func watchers(fullname: String, page: Int) -> Single<[User]>
    func stargazers(fullname: String, page: Int) -> Single<[User]>
    func forks(fullname: String, page: Int) -> Single<[Repository]>
    func readme(fullname: String, ref: String?) -> Single<Content>
    func content(fullname: String, path: String, ref: String?) -> Single<Content>
    func issues(fullname: String, state: String, page: Int) -> Single<[Issue]>
    func issue(fullname: String, number: Int) -> Single<Issue>
    func issueComments(fullname: String, number: Int, page: Int) -> Single<[GitHubModels.Comment]>
    func commits(fullname: String, page: Int) -> Single<[Commit]>
    func commit(fullname: String, sha: String) -> Single<Commit>
    func branches(fullname: String, page: Int) -> Single<[Branch]>
    func branch(fullname: String, name: String) -> Single<Branch>
    func releases(fullname: String, page: Int) -> Single<[Release]>
    func release(fullname: String, releaseId: Int) -> Single<Release>
    func pullRequests(fullname: String, state: String, page: Int) -> Single<[PullRequest]>
    func pullRequest(fullname: String, number: Int) -> Single<PullRequest>
    func pullRequestComments(fullname: String, number: Int, page: Int) -> Single<[GitHubModels.Comment]>
    func contributors(fullname: String, page: Int) -> Single<[User]>
    func searchUsers(query: String, sort: String, order: String, page: Int, endCursor: String?) -> Single<UserSearch>
    func user(owner: String) -> Single<User>
    func organization(owner: String) -> Single<User>
    func userRepositories(username: String, type: APIParameter.RepositoriesType?, sort: APIParameter.Sort?, page: Int, numberOfPerPage: Int?) -> Single<[Repository]>

    func userStarredRepositories(username: String, sort: APIParameter.Sort?, direction: APIParameter.Direction?, numberOfPerPage: Int?, page: Int) -> Single<[Repository]>
    func allUserStarredRepositories(username: String, sort: APIParameter.Sort?, direction: APIParameter.Direction?) -> Single<[Repository]>
    func userWatchingRepositories(username: String, page: Int) -> Single<[Repository]>
    func userFollowers(username: String, page: Int) -> Single<[User]>
    func userFollowing(username: String, page: Int) -> Single<[User]>
    func events(page: Int) -> Single<[Event]>
    func repositoryEvents(owner: String, repo: String, page: Int) -> Single<[Event]>
    func userReceivedEvents(username: String, page: Int) -> Single<[Event]>
    func userPerformedEvents(username: String, page: Int) -> Single<[Event]>
    func organizationEvents(username: String, page: Int) -> Single<[Event]>

    // MARK: - Authentication is required

    func authenticatedUserRepositories(filter: APIParameter.Filter?, sort: APIParameter.Sort?, direction: APIParameter.Direction?, numberOfPerPage: Int?, page: Int?, since: Date?, before: Date?) -> Single<[Repository]>
    func allAuthenticatedUserRepositories(filter: APIParameter.Filter?) -> Single<[Repository]>
    func organizationRepositories(organization: String, type: APIParameter.RepositoriesType?, sort: APIParameter.Sort?, direction: APIParameter.Direction?, numberOfPerPage: Int?, page: Int?) -> Single<[Repository]>
    func allOrganizationRepositories(organization: String, type: APIParameter.RepositoriesType?) -> Single<[Repository]>

    func createFork(fullname: String, organization: String?, name: String?, isDefaultBranchOnly: Bool) -> Single<Repository>
    func syncFork(fullname: String, branch: String) -> Single<SyncForkSuccessResponse>
    func profile() -> Single<User>
    func authenticatedUser() -> Single<User>
    func authenticatedUserOrganizations(numberOfPerPage: Int?, page: Int?, isDetail: Bool) -> Single<[User]>
    func notifications(all: Bool, participating: Bool, page: Int) -> Single<[Notification]>
    func repositoryNotifications(fullname: String, all: Bool, participating: Bool, page: Int) -> Single<[Notification]>
    func markAsReadNotifications() -> Single<Void>
    func markAsReadRepositoryNotifications(fullname: String) -> Single<Void>
    func checkStarring(fullname: String) -> Single<Void>
    func starRepository(fullname: String) -> Single<Void>
    func unstarRepository(fullname: String) -> Single<Void>
    func checkFollowing(username: String) -> Single<Void>
    func followUser(username: String) -> Single<Void>
    func unfollowUser(username: String) -> Single<Void>
    func deleteRepository(fullname: String) -> Single<Void>

    // MARK: - Trending

    func trendingRepositories(language: String, since: String) -> Single<[TrendingRepository]>
    func trendingDevelopers(language: String, since: String) -> Single<[TrendingUser]>
    func languages() -> Single<[Language]>

    // MARK: - Codetabs

    func numberOfLines(fullname: String) -> Single<[LanguageLines]>
}
