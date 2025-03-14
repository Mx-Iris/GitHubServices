import Foundation
import GitHubModels
import GitHubServicesHelpers

@AddAsyncAllMembers
public protocol RestAPI {
    func searchRepositories(query: String, sort: String, order: String, page: Int, endCursor: String?, completion: @escaping (Result<RepositorySearch, Error>) -> Void)

    func repository(fullname: String, qualifiedName: String, completion: @escaping (Result<Repository, Error>) -> Void)

    func watchers(fullname: String, page: Int, completion: @escaping (Result<[User], Error>) -> Void)

    func stargazers(fullname: String, page: Int, completion: @escaping (Result<[User], Error>) -> Void)

    func forks(fullname: String, page: Int, completion: @escaping (Result<[Repository], Error>) -> Void)

    func readme(fullname: String, ref: String?, completion: @escaping (Result<Content, Error>) -> Void)

    func content(fullname: String, path: String, ref: String?, completion: @escaping (Result<Content, Error>) -> Void)

    func createOrUpdateContent(fullname: String, path: String, message: String, content: String, sha: String?, branch: String?, committer: Committer?, author: Committer?, completion: @escaping (Result<(content: Content?, commit: Commit), Error>) -> Void)

    func createOrUpdateWorkflowFile(fullname: String, filename: String, content: String, sha: String?, message: String, committer: Committer?, completion: @escaping (Result<(content: Content?, commit: Commit), Error>) -> Void)

    func workflowFile(fullname: String, filename: String, ref: String?, completion: @escaping (Result<Content, Error>) -> Void)

    func issues(fullname: String, state: String, page: Int, completion: @escaping (Result<[Issue], Error>) -> Void)

    func issue(fullname: String, number: Int, completion: @escaping (Result<Issue, Error>) -> Void)

    func issueComments(fullname: String, number: Int, page: Int, completion: @escaping (Result<[GitHubModels.Comment], Error>) -> Void)

    func commits(fullname: String, page: Int, completion: @escaping (Result<[Commit], Error>) -> Void)

    func commit(fullname: String, sha: String, completion: @escaping (Result<Commit, Error>) -> Void)

    func branches(fullname: String, page: Int, completion: @escaping (Result<[Branch], Error>) -> Void)

    func branch(fullname: String, name: String, completion: @escaping (Result<Branch, Error>) -> Void)

    func releases(fullname: String, page: Int, completion: @escaping (Result<[Release], Error>) -> Void)

    func release(fullname: String, releaseId: Int, completion: @escaping (Result<Release, Error>) -> Void)

    func pullRequests(fullname: String, state: String, page: Int, completion: @escaping (Result<[PullRequest], Error>) -> Void)

    func pullRequest(fullname: String, number: Int, completion: @escaping (Result<PullRequest, Error>) -> Void)

    func pullRequestComments(fullname: String, number: Int, page: Int, completion: @escaping (Result<[GitHubModels.Comment], Error>) -> Void)

    func contributors(fullname: String, page: Int, completion: @escaping (Result<[User], Error>) -> Void)

    func searchUsers(query: String, sort: String, order: String, page: Int, endCursor: String?, completion: @escaping (Result<UserSearch, Error>) -> Void)

    func user(owner: String, completion: @escaping (Result<User, Error>) -> Void)

    func organization(owner: String, completion: @escaping (Result<User, Error>) -> Void)

    func userRepositories(username: String, type: APIParameter.RepositoriesType?, sort: APIParameter.Sort?, page: Int, numberOfPerPage: Int?, completion: @escaping (Result<[Repository], Error>) -> Void)

    func allUserRepositories(username: String, type: APIParameter.RepositoriesType?, sort: APIParameter.Sort?, completion: @escaping (Result<[Repository], Error>) -> Void)

    func userStarredRepositories(username: String, sort: APIParameter.Sort?, direction: APIParameter.Direction?, numberOfPerPage: Int?, page: Int, completion: @escaping (Result<[Repository], Error>) -> Void)

    func allUserStarredRepositories(username: String, sort: APIParameter.Sort?, direction: APIParameter.Direction?, completion: @escaping (Result<[Repository], Error>) -> Void)
//    func allUserStarredRepositories(username: String, sort: APIParameter.Sort?, direction: APIParameter.Direction?) async throws -> [Repository]

    func userWatchingRepositories(username: String, page: Int, completion: @escaping (Result<[Repository], Error>) -> Void)

    func userFollowers(username: String, page: Int, completion: @escaping (Result<[User], Error>) -> Void)

    func userFollowing(username: String, page: Int, completion: @escaping (Result<[User], Error>) -> Void)

    func events(page: Int, completion: @escaping (Result<[Event], Error>) -> Void)

    func repositoryEvents(owner: String, repo: String, page: Int, completion: @escaping (Result<[Event], Error>) -> Void)

    func userReceivedEvents(username: String, page: Int, completion: @escaping (Result<[Event], Error>) -> Void)

    func userPerformedEvents(username: String, page: Int, completion: @escaping (Result<[Event], Error>) -> Void)

    func organizationEvents(username: String, page: Int, completion: @escaping (Result<[Event], Error>) -> Void)

    // MARK: - Authentication is required

    func authenticatedUserRepositories(filter: APIParameter.Filter?, sort: APIParameter.Sort?, direction: APIParameter.Direction?, numberOfPerPage: Int?, page: Int?, since: Date?, before: Date?, completion: @escaping (Result<[Repository], Error>) -> Void)

    func allAuthenticatedUserRepositories(filter: APIParameter.Filter?, completion: @escaping (Result<[Repository], Error>) -> Void)

    func organizationRepositories(organization: String, type: APIParameter.RepositoriesType?, sort: APIParameter.Sort?, direction: APIParameter.Direction?, numberOfPerPage: Int?, page: Int?, completion: @escaping (Result<[Repository], Error>) -> Void)

    func allOrganizationRepositories(organization: String, type: APIParameter.RepositoriesType?, completion: @escaping (Result<[Repository], Error>) -> Void)

    func createFork(fullname: String, organization: String?, name: String?, isDefaultBranchOnly: Bool, completion: @escaping (Result<Repository, Error>) -> Void)

    func syncFork(fullname: String, branch: String, completion: @escaping (Result<SyncForkSuccessResponse, Error>) -> Void)

    func profile(completion: @escaping (Result<User, Error>) -> Void)

    func authenticatedUser(completion: @escaping (Result<User, Error>) -> Void)

    func authenticatedUserOrganizations(numberOfPerPage: Int?, page: Int?, isDetail: Bool, completion: @escaping (Result<[User], Error>) -> Void)

    func notifications(all: Bool, participating: Bool, page: Int, completion: @escaping (Result<[Notification], Error>) -> Void)

    func repositoryNotifications(fullname: String, all: Bool, participating: Bool, page: Int, completion: @escaping (Result<[Notification], Error>) -> Void)

    func markAsReadNotifications(completion: @escaping (Result<Void, Error>) -> Void)

    func markAsReadRepositoryNotifications(fullname: String, completion: @escaping (Result<Void, Error>) -> Void)

    func checkStarring(fullname: String, completion: @escaping (Result<Void, Error>) -> Void)

    func starRepository(fullname: String, completion: @escaping (Result<Void, Error>) -> Void)

    func unstarRepository(fullname: String, completion: @escaping (Result<Void, Error>) -> Void)

    func checkFollowing(username: String, completion: @escaping (Result<Void, Error>) -> Void)

    func followUser(username: String, completion: @escaping (Result<Void, Error>) -> Void)

    func unfollowUser(username: String, completion: @escaping (Result<Void, Error>) -> Void)

    func deleteRepository(fullname: String, completion: @escaping (Result<Void, Error>) -> Void)

    // MARK: - Trending

    func trendingRepositories(language: String, since: String, completion: @escaping (Result<[TrendingRepository], Error>) -> Void)

    func trendingDevelopers(language: String, since: String, completion: @escaping (Result<[TrendingUser], Error>) -> Void)

    func languages(completion: @escaping (Result<[Language], Error>) -> Void)

    // MARK: - Codetabs

    func numberOfLines(fullname: String, completion: @escaping (Result<[LanguageLines], Error>) -> Void)

    func organizationDefaultWorkflowPermissions(organization: String, completion: @escaping (Result<DefaultWorkflowPermissionsInfo, Error>) -> Void)

    func setOrganizationDefaultWorkflowPermissions(organization: String, defaultWorkflowPermissions: DefaultWorkflowPermissions, isCanApprovePullRequestReviews: Bool?, completion: @escaping (Result<Void, Error>) -> Void)
}
