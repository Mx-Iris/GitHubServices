import RxSwift
import RxCocoa
import Foundation
import GitHubModels
import GitHubNetworking

public typealias Event = GitHubModels.Event

public typealias Notification = GitHubModels.Notification

/// A thin RxSwift wrapper around the completion-handler based `GitHubClient`.
///
/// Every method simply bridges the underlying `GitHubClient` callback into a
/// `Single`/`Maybe`; no networking, decoding, or pagination logic is duplicated here.
public final class RxGitHubClient: RxGitHubAPI {
    private let client: GitHubClient

    public init(token: Token?, privateToken: Token? = nil) {
        self.client = GitHubClient(token: token, privateToken: privateToken)
    }

    private init(client: GitHubClient) {
        self.client = client
    }

    public var isAuthorized: Bool {
        client.isAuthorized
    }

    public static let testAPI = RxGitHubClient(client: .testAPI)
}

// MARK: - Authentication

extension RxGitHubClient {
    public static func accessToken(clientID: String, clientSecret: String, code: String, redirectURI: String?, state: String?) -> Single<Token> {
        Single.create { observer in
            GitHubClient.accessToken(clientID: clientID, clientSecret: clientSecret, code: code, redirectURI: redirectURI, state: state) { result in
                switch result {
                case let .success(token):
                    observer(.success(token))
                case let .failure(error):
                    observer(.failure(error))
                }
            }
            return Disposables.create()
        }
        .observe(on: MainScheduler.instance)
    }

    @available(*, deprecated, renamed: "accessToken(clientID:clientSecret:code:redirectURI:state:)")
    public static func createAccessToken(clientId: String, clientSecret: String, code: String, redirectUri: String?, state: String?) -> Single<Token> {
        accessToken(clientID: clientId, clientSecret: clientSecret, code: code, redirectURI: redirectUri, state: state)
    }
}

// MARK: - GraphQL

extension RxGitHubClient {
    public func userLists(login: String, first: Int?, after: String?, skipSuggestions: Bool?) -> Maybe<[UserList]> {
        single { self.client.userLists(login: login, first: first, after: after, skipSuggestions: skipSuggestions, completion: $0) }
            .map { $0 ?? [] }
            .asMaybe()
    }

    public func list(username: String, slug: String, first: Int?, after: String?, avatarSize: Int) -> Maybe<List> {
        maybe { self.client.list(username: username, slug: slug, first: first, after: after, avatarSize: avatarSize, completion: $0) }
    }
}

// MARK: - REST

extension RxGitHubClient {
    public func searchRepositories(query: String, sort: String, order: String, page: Int, endCursor: String?) -> Single<RepositorySearch> {
        single { self.client.searchRepositories(query: query, sort: sort, order: order, page: page, endCursor: endCursor, completion: $0) }
    }

    public func watchers(fullname: String, page: Int) -> Single<[User]> {
        single { self.client.watchers(fullname: fullname, page: page, completion: $0) }
    }

    public func stargazers(fullname: String, page: Int) -> Single<[User]> {
        single { self.client.stargazers(fullname: fullname, page: page, completion: $0) }
    }

    public func forks(fullname: String, page: Int) -> Single<[Repository]> {
        single { self.client.forks(fullname: fullname, page: page, completion: $0) }
    }

    public func readme(fullname: String, ref: String?) -> Single<Content> {
        single { self.client.readme(fullname: fullname, ref: ref, completion: $0) }
    }

    public func content(fullname: String, path: String, ref: String?) -> Single<Content> {
        single { self.client.content(fullname: fullname, path: path, ref: ref, completion: $0) }
    }

    public func issues(fullname: String, state: String, page: Int) -> Single<[Issue]> {
        single { self.client.issues(fullname: fullname, state: state, page: page, completion: $0) }
    }

    public func issue(fullname: String, number: Int) -> Single<Issue> {
        single { self.client.issue(fullname: fullname, number: number, completion: $0) }
    }

    public func issueComments(fullname: String, number: Int, page: Int) -> Single<[Comment]> {
        single { self.client.issueComments(fullname: fullname, number: number, page: page, completion: $0) }
    }

    public func commits(fullname: String, page: Int) -> Single<[Commit]> {
        single { self.client.commits(fullname: fullname, page: page, completion: $0) }
    }

    public func commit(fullname: String, sha: String) -> Single<Commit> {
        single { self.client.commit(fullname: fullname, sha: sha, completion: $0) }
    }

    public func branches(fullname: String, page: Int) -> Single<[Branch]> {
        single { self.client.branches(fullname: fullname, page: page, completion: $0) }
    }

    public func branch(fullname: String, name: String) -> Single<Branch> {
        single { self.client.branch(fullname: fullname, name: name, completion: $0) }
    }

    public func releases(fullname: String, page: Int) -> Single<[Release]> {
        single { self.client.releases(fullname: fullname, page: page, completion: $0) }
    }

    public func release(fullname: String, releaseId: Int) -> Single<Release> {
        single { self.client.release(fullname: fullname, releaseId: releaseId, completion: $0) }
    }

    public func pullRequests(fullname: String, state: String, page: Int) -> Single<[PullRequest]> {
        single { self.client.pullRequests(fullname: fullname, state: state, page: page, completion: $0) }
    }

    public func pullRequest(fullname: String, number: Int) -> Single<PullRequest> {
        single { self.client.pullRequest(fullname: fullname, number: number, completion: $0) }
    }

    public func pullRequestComments(fullname: String, number: Int, page: Int) -> Single<[Comment]> {
        single { self.client.pullRequestComments(fullname: fullname, number: number, page: page, completion: $0) }
    }

    public func contributors(fullname: String, page: Int) -> Single<[User]> {
        single { self.client.contributors(fullname: fullname, page: page, completion: $0) }
    }

    public func repository(fullname: String, qualifiedName: String) -> Single<Repository> {
        single { self.client.repository(fullname: fullname, qualifiedName: qualifiedName, completion: $0) }
    }

    public func searchUsers(query: String, sort: String, order: String, page: Int, endCursor: String?) -> Single<UserSearch> {
        single { self.client.searchUsers(query: query, sort: sort, order: order, page: page, endCursor: endCursor, completion: $0) }
    }

    public func user(owner: String) -> Single<User> {
        single { self.client.user(owner: owner, completion: $0) }
    }

    public func organization(owner: String) -> Single<User> {
        single { self.client.organization(owner: owner, completion: $0) }
    }

    public func userRepositories(username: String, type: APIParameter.RepositoriesType?, sort: APIParameter.Sort?, page: Int, numberOfPerPage: Int?) -> Single<[Repository]> {
        single { self.client.userRepositories(username: username, type: type, sort: sort, page: page, numberOfPerPage: numberOfPerPage, completion: $0) }
    }

    public func userStarredRepositories(username: String, sort: APIParameter.Sort?, direction: APIParameter.Direction?, numberOfPerPage: Int?, page: Int) -> Single<[Repository]> {
        single { self.client.userStarredRepositories(username: username, sort: sort, direction: direction, numberOfPerPage: numberOfPerPage, page: page, completion: $0) }
    }

    public func allUserStarredRepositories(username: String, sort: APIParameter.Sort?, direction: APIParameter.Direction?) -> Single<[Repository]> {
        single { self.client.allUserStarredRepositories(username: username, sort: sort, direction: direction, completion: $0) }
    }

    public func userWatchingRepositories(username: String, page: Int) -> Single<[Repository]> {
        single { self.client.userWatchingRepositories(username: username, page: page, completion: $0) }
    }

    public func userFollowers(username: String, page: Int) -> Single<[User]> {
        single { self.client.userFollowers(username: username, page: page, completion: $0) }
    }

    public func userFollowing(username: String, page: Int) -> Single<[User]> {
        single { self.client.userFollowing(username: username, page: page, completion: $0) }
    }

    public func events(page: Int) -> Single<[Event]> {
        single { self.client.events(page: page, completion: $0) }
    }

    public func repositoryEvents(owner: String, repo: String, page: Int) -> Single<[Event]> {
        single { self.client.repositoryEvents(owner: owner, repo: repo, page: page, completion: $0) }
    }

    public func userReceivedEvents(username: String, page: Int) -> Single<[Event]> {
        single { self.client.userReceivedEvents(username: username, page: page, completion: $0) }
    }

    public func userPerformedEvents(username: String, page: Int) -> Single<[Event]> {
        single { self.client.userPerformedEvents(username: username, page: page, completion: $0) }
    }

    public func organizationEvents(username: String, page: Int) -> Single<[Event]> {
        single { self.client.organizationEvents(username: username, page: page, completion: $0) }
    }

    // MARK: - Authentication is required

    public func profile() -> Single<User> {
        single { self.client.profile(completion: $0) }
    }

    public func authenticatedUser() -> Single<User> {
        single { self.client.authenticatedUser(completion: $0) }
    }

    public func authenticatedUserOrganizations(numberOfPerPage: Int?, page: Int?, isDetail: Bool) -> Single<[User]> {
        single { self.client.authenticatedUserOrganizations(numberOfPerPage: numberOfPerPage, page: page, isDetail: isDetail, completion: $0) }
    }

    public func notifications(all: Bool, participating: Bool, page: Int) -> Single<[Notification]> {
        single { self.client.notifications(all: all, participating: participating, page: page, completion: $0) }
    }

    public func repositoryNotifications(fullname: String, all: Bool, participating: Bool, page: Int) -> Single<[Notification]> {
        single { self.client.repositoryNotifications(fullname: fullname, all: all, participating: participating, page: page, completion: $0) }
    }

    public func markAsReadNotifications() -> Single<Void> {
        single { self.client.markAsReadNotifications(completion: $0) }
    }

    public func markAsReadRepositoryNotifications(fullname: String) -> Single<Void> {
        single { self.client.markAsReadRepositoryNotifications(fullname: fullname, completion: $0) }
    }

    public func checkStarring(fullname: String) -> Single<Void> {
        single { self.client.checkStarring(fullname: fullname, completion: $0) }
    }

    public func starRepository(fullname: String) -> Single<Void> {
        single { self.client.starRepository(fullname: fullname, completion: $0) }
    }

    public func unstarRepository(fullname: String) -> Single<Void> {
        single { self.client.unstarRepository(fullname: fullname, completion: $0) }
    }

    public func checkFollowing(username: String) -> Single<Void> {
        single { self.client.checkFollowing(username: username, completion: $0) }
    }

    public func followUser(username: String) -> Single<Void> {
        single { self.client.followUser(username: username, completion: $0) }
    }

    public func unfollowUser(username: String) -> Single<Void> {
        single { self.client.unfollowUser(username: username, completion: $0) }
    }

    public func authenticatedUserRepositories(filter: APIParameter.Filter?, sort: APIParameter.Sort?, direction: APIParameter.Direction?, numberOfPerPage: Int?, page: Int?, since: Date?, before: Date?) -> Single<[Repository]> {
        single { self.client.authenticatedUserRepositories(filter: filter, sort: sort, direction: direction, numberOfPerPage: numberOfPerPage, page: page, since: since, before: before, completion: $0) }
    }

    public func allAuthenticatedUserRepositories(filter: APIParameter.Filter?) -> Single<[Repository]> {
        single { self.client.allAuthenticatedUserRepositories(filter: filter, completion: $0) }
    }

    public func organizationRepositories(organization: String, type: APIParameter.RepositoriesType?, sort: APIParameter.Sort?, direction: APIParameter.Direction?, numberOfPerPage: Int?, page: Int?) -> Single<[Repository]> {
        single { self.client.organizationRepositories(organization: organization, type: type, sort: sort, direction: direction, numberOfPerPage: numberOfPerPage, page: page, completion: $0) }
    }

    public func allOrganizationRepositories(organization: String, type: APIParameter.RepositoriesType?) -> Single<[Repository]> {
        single { self.client.allOrganizationRepositories(organization: organization, type: type, completion: $0) }
    }

    public func createFork(fullname: String, organization: String?, name: String?, isDefaultBranchOnly: Bool) -> Single<Repository> {
        single { self.client.createFork(fullname: fullname, organization: organization, name: name, isDefaultBranchOnly: isDefaultBranchOnly, completion: $0) }
    }

    public func syncFork(fullname: String, branch: String) -> Single<SyncForkSuccessResponse> {
        single { self.client.syncFork(fullname: fullname, branch: branch, completion: $0) }
    }

    public func deleteRepository(fullname: String) -> Single<Void> {
        single { self.client.deleteRepository(fullname: fullname, completion: $0) }
    }

    // MARK: - Trending

    public func trendingRepositories(language: String, since: String) -> Single<[TrendingRepository]> {
        single { self.client.trendingRepositories(language: language, since: since, completion: $0) }
    }

    public func trendingDevelopers(language: String, since: String) -> Single<[TrendingUser]> {
        single { self.client.trendingDevelopers(language: language, since: since, completion: $0) }
    }

    public func languages() -> Single<[Language]> {
        single { self.client.languages(completion: $0) }
    }

    // MARK: - Codetabs

    public func numberOfLines(fullname: String) -> Single<[LanguageLines]> {
        single { self.client.numberOfLines(fullname: fullname, completion: $0) }
    }
}

// MARK: - Bridging helpers

extension RxGitHubClient {
    /// Bridges a completion-handler call returning `Result<Value, Error>` into a `Single`.
    /// The closure's own return value (a `Cancellable` or `Void`) is ignored.
    private func single<Value, Ignored>(
        _ work: @escaping (@escaping (Result<Value, Error>) -> Void) -> Ignored
    ) -> Single<Value> {
        Single.create { observer in
            _ = work { result in
                switch result {
                case let .success(value):
                    observer(.success(value))
                case let .failure(error):
                    observer(.failure(error))
                }
            }
            return Disposables.create()
        }
        .observe(on: MainScheduler.instance)
    }

    /// Bridges a completion-handler call returning `Result<Value?, Error>` into a `Maybe`,
    /// emitting `.completed` when the value is `nil`.
    private func maybe<Value, Ignored>(
        _ work: @escaping (@escaping (Result<Value?, Error>) -> Void) -> Ignored
    ) -> Maybe<Value> {
        Maybe.create { observer in
            _ = work { result in
                switch result {
                case let .success(value):
                    if let value {
                        observer(.success(value))
                    } else {
                        observer(.completed)
                    }
                case let .failure(error):
                    observer(.error(error))
                }
            }
            return Disposables.create()
        }
        .observe(on: MainScheduler.instance)
    }
}
