import Moya
import RxMoya
import Apollo
import RxSwift
import RxCocoa
import Alamofire
import ApolloAPI
import Foundation
import GitHubModels
import RxApolloClient
import GitHubGraphQLAPI
import GitHubNetworking

public typealias Event = GitHubModels.Event

public typealias Notification = GitHubModels.Notification

public final class RxGitHubClient: RxGitHubAPI {
    private let githubProvider: RxGitHubProvider
    private let trendingGithubProvider: RxTrendingGitHubProvider
    private let codetabsProvider: RxCodetabsProvider
    private let disposeBag = DisposeBag()
    private let token: Token?
    private let privateToken: Token?

    private lazy var client: ApolloClient = makeApolloClient(for: token)
    private lazy var privateClient: ApolloClient = makeApolloClient(for: privateToken)

    private func makeApolloClient(for token: Token?) -> ApolloClient {
        let client = URLSessionClient()
        let cache = InMemoryNormalizedCache()
        let store = ApolloStore(cache: cache)
        let provider = NetworkInterceptorProvider(client: client, store: store, token: token)
        let transport = RequestChainNetworkTransport(
            interceptorProvider: provider,
            endpointURL: Configs.Network.githubGraphQLBaseURL
        )
        return ApolloClient(networkTransport: transport, store: store)
    }

    public init(token: Token?, privateToken: Token?) {
        self.token = token
        self.privateToken = privateToken
        if let token {
            self.githubProvider = .defaultProvider(token: token)
        } else {
            self.githubProvider = .defaultProvider()
        }
        self.trendingGithubProvider = .defaultProvider()
        self.codetabsProvider = .defaultProvider()
    }

    private init() {
        self.token = nil
        self.privateToken = nil
        self.githubProvider = .stubbingProvider()
        self.trendingGithubProvider = .stubbingProvider()
        self.codetabsProvider = .stubbingProvider()
    }

    public var isAuthorized: Bool {
        if let token {
            return token.type != .unauthorized
        } else {
            return false
        }
    }

    public static let testAPI = RxGitHubClient()
}

extension RxGitHubClient {
    public static func createAccessToken(clientId: String, clientSecret: String, code: String, redirectUri: String?, state: String?) -> Single<Token> {
        Single.create { single in
            var params: Parameters = [:]
            params["client_id"] = clientId
            params["client_secret"] = clientSecret
            params["code"] = code
            params["redirect_uri"] = redirectUri
            params["state"] = state
            AF.request(
                "https://github.com/login/oauth/access_token",
                method: .post,
                parameters: params,
                encoding: URLEncoding.default,
                headers: ["Accept": "application/json"]
            )
            .responseDecodable(of: Token.self, completionHandler: { response in
                switch response.result {
                case let .success(token):
                    single(.success(token))
                case let .failure(error):
                    single(.failure(error))
                }

            })
            return Disposables.create {}
        }
        .observe(on: MainScheduler.instance)
    }
}

extension RxGitHubClient {
    public func userLists(login: String, first: Int?, after: String?, skipSuggestions: Bool?) -> Maybe<[UserList]> {
        privateClient.rx.fetch(query: UserListsQuery(login: login, first: (first ?? 100).graphQLNullable, after: after.graphQLNullable, skipSuggestions: skipSuggestions ?? true)).map {
            $0.user?.lists.nodes.map { $0.compactMap { $0 }.map { UserList(fragment: $0.fragments.userListFragment) } } ?? []
        }
    }

    public func list(username: String, slug: String, first: Int?, after: String?, avatarSize: Int) -> Maybe<List> {
        privateClient.rx.fetch(query: ListQuery(username: username, slug: slug, first: first.graphQLNullable, after: after.graphQLNullable, avatarSize: avatarSize)).compactMap { $0.list.map { List(graphList: $0) } }
    }
}

extension RxGitHubClient {
    public func searchRepositories(query: String, sort: String, order: String, page: Int, endCursor: String?) -> Single<RepositorySearch> {
        requestObject(.searchRepositories(query: query, sort: sort, order: order, page: page), type: RepositorySearch.self)
    }

    public func watchers(fullname: String, page: Int) -> Single<[User]> {
        requestArray(.watchers(fullname: fullname, page: page), type: User.self)
    }

    public func stargazers(fullname: String, page: Int) -> Single<[User]> {
        requestArray(.stargazers(fullname: fullname, page: page), type: User.self)
    }

    public func forks(fullname: String, page: Int) -> Single<[Repository]> {
        requestArray(.forks(fullname: fullname, page: page), type: Repository.self)
    }

    public func readme(fullname: String, ref: String?) -> Single<Content> {
        requestObject(.readme(fullname: fullname, ref: ref), type: Content.self)
    }

    public func content(fullname: String, path: String, ref: String?) -> Single<Content> {
        requestObject(.content(fullname: fullname, path: path, ref: ref), type: Content.self)
    }

    public func issues(fullname: String, state: String, page: Int) -> Single<[Issue]> {
        requestArray(.issues(fullname: fullname, state: state, page: page), type: Issue.self)
    }

    public func issue(fullname: String, number: Int) -> Single<Issue> {
        requestObject(.issue(fullname: fullname, number: number), type: Issue.self)
    }

    public func issueComments(fullname: String, number: Int, page: Int) -> Single<[Comment]> {
        requestArray(.issueComments(fullname: fullname, number: number, page: page), type: Comment.self)
    }

    public func commits(fullname: String, page: Int) -> Single<[Commit]> {
        requestArray(.commits(fullname: fullname, page: page), type: Commit.self)
    }

    public func commit(fullname: String, sha: String) -> Single<Commit> {
        requestObject(.commit(fullname: fullname, sha: sha), type: Commit.self)
    }

    public func branches(fullname: String, page: Int) -> Single<[Branch]> {
        requestArray(.branches(fullname: fullname, page: page), type: Branch.self)
    }

    public func branch(fullname: String, name: String) -> Single<Branch> {
        requestObject(.branch(fullname: fullname, name: name), type: Branch.self)
    }

    public func releases(fullname: String, page: Int) -> Single<[Release]> {
        requestArray(.releases(fullname: fullname, page: page), type: Release.self)
    }

    public func release(fullname: String, releaseId: Int) -> Single<Release> {
        requestObject(.release(fullname: fullname, releaseId: releaseId), type: Release.self)
    }

    public func pullRequests(fullname: String, state: String, page: Int) -> Single<[PullRequest]> {
        requestArray(.pullRequests(fullname: fullname, state: state, page: page), type: PullRequest.self)
    }

    public func pullRequest(fullname: String, number: Int) -> Single<PullRequest> {
        requestObject(.pullRequest(fullname: fullname, number: number), type: PullRequest.self)
    }

    public func pullRequestComments(fullname: String, number: Int, page: Int) -> Single<[Comment]> {
        requestArray(.pullRequestComments(fullname: fullname, number: number, page: page), type: Comment.self)
    }

    public func contributors(fullname: String, page: Int) -> Single<[User]> {
        requestArray(.contributors(fullname: fullname, page: page), type: User.self)
    }

    public func repository(fullname: String, qualifiedName: String) -> Single<Repository> {
        requestObject(.repository(fullname: fullname), type: Repository.self)
    }

    public func searchUsers(query: String, sort: String, order: String, page: Int, endCursor: String?) -> Single<UserSearch> {
        requestObject(.searchUsers(query: query, sort: sort, order: order, page: page), type: UserSearch.self)
    }

    public func user(owner: String) -> Single<User> {
        requestObject(.user(owner: owner), type: User.self)
    }

    public func organization(owner: String) -> Single<User> {
        requestObject(.organization(owner: owner), type: User.self)
    }

    public func userRepositories(username: String, type: APIParameter.RepositoriesType?, sort: APIParameter.Sort?, page: Int, numberOfPerPage: Int?) -> Single<[Repository]> {
        requestArray(.userRepositories(username: username, type: type, sort: sort, page: page, numberOfPerPage: numberOfPerPage), type: Repository.self)
    }

    public func userStarredRepositories(username: String, sort: APIParameter.Sort?, direction: APIParameter.Direction?, numberOfPerPage: Int?, page: Int) -> Single<[Repository]> {
        requestArray(.userStarredRepositories(username: username, sort: sort, direction: direction, numberOfPerPage: numberOfPerPage, page: page), type: Repository.self)
    }

    public func allUserStarredRepositories(username: String, sort: APIParameter.Sort?, direction: APIParameter.Direction?) -> Single<[Repository]> {
        requestAllObject { [unowned self] currentPage in
            userStarredRepositories(username: username, sort: sort, direction: direction, numberOfPerPage: 100, page: currentPage)
        }
    }

    public func userWatchingRepositories(username: String, page: Int) -> Single<[Repository]> {
        requestArray(.userWatchingRepositories(username: username, page: page), type: Repository.self)
    }

    public func userFollowers(username: String, page: Int) -> Single<[User]> {
        requestArray(.userFollowers(username: username, page: page), type: User.self)
    }

    public func userFollowing(username: String, page: Int) -> Single<[User]> {
        requestArray(.userFollowing(username: username, page: page), type: User.self)
    }

    public func events(page: Int) -> Single<[Event]> {
        requestArray(.events(page: page), type: Event.self)
    }

    public func repositoryEvents(owner: String, repo: String, page: Int) -> Single<[Event]> {
        requestArray(.repositoryEvents(owner: owner, repo: repo, page: page), type: Event.self)
    }

    public func userReceivedEvents(username: String, page: Int) -> Single<[Event]> {
        requestArray(.userReceivedEvents(username: username, page: page), type: Event.self)
    }

    public func userPerformedEvents(username: String, page: Int) -> Single<[Event]> {
        requestArray(.userPerformedEvents(username: username, page: page), type: Event.self)
    }

    public func organizationEvents(username: String, page: Int) -> Single<[Event]> {
        requestArray(.organizationEvents(username: username, page: page), type: Event.self)
    }

    // MARK: - Authentication is required

    public func profile() -> Single<User> {
        Single.zip(authenticatedUser(), authenticatedUserOrganizations(numberOfPerPage: 100, page: 1, isDetail: true)) { user, organizations in
            var user = user
            user.organizations = organizations
            return user
        }
    }

    public func authenticatedUser() -> Single<User> {
        requestObject(.authenticatedUser, type: User.self)
    }

    public func authenticatedUserOrganizations(numberOfPerPage: Int?, page: Int?, isDetail: Bool) -> Single<[User]> {
        var request: Single<[User]> = requestArray(.authenticatedUserOrganizations(numberOfPerPage: numberOfPerPage, page: page), type: User.self)
        if isDetail {
            request = request.flatMap {
                Single.zip($0.map { self.organization(owner: $0.login) })
            }
        }
        return request
    }

    public func notifications(all: Bool, participating: Bool, page: Int) -> Single<[Notification]> {
        requestArray(.notifications(all: all, participating: participating, page: page), type: Notification.self)
    }

    public func repositoryNotifications(fullname: String, all: Bool, participating: Bool, page: Int) -> Single<[Notification]> {
        requestArray(.repositoryNotifications(fullname: fullname, all: all, participating: participating, page: page), type: Notification.self)
    }

    public func markAsReadNotifications() -> Single<Void> {
        requestWithoutMapping(.markAsReadNotifications).map { _ in }
    }

    public func markAsReadRepositoryNotifications(fullname: String) -> Single<Void> {
        requestWithoutMapping(.markAsReadRepositoryNotifications(fullname: fullname)).map { _ in }
    }

    public func checkStarring(fullname: String) -> Single<Void> {
        requestWithoutMapping(.checkStarring(fullname: fullname)).map { _ in }
    }

    public func starRepository(fullname: String) -> Single<Void> {
        requestWithoutMapping(.starRepository(fullname: fullname)).map { _ in }
    }

    public func unstarRepository(fullname: String) -> Single<Void> {
        requestWithoutMapping(.unstarRepository(fullname: fullname)).map { _ in }
    }

    public func checkFollowing(username: String) -> Single<Void> {
        requestWithoutMapping(.checkFollowing(username: username)).map { _ in }
    }

    public func followUser(username: String) -> Single<Void> {
        requestWithoutMapping(.followUser(username: username)).map { _ in }
    }

    public func unfollowUser(username: String) -> Single<Void> {
        requestWithoutMapping(.unfollowUser(username: username)).map { _ in }
    }

    public func authenticatedUserRepositories(filter: APIParameter.Filter?, sort: APIParameter.Sort?, direction: APIParameter.Direction?, numberOfPerPage: Int?, page: Int?, since: Date?, before: Date?) -> Single<[Repository]> {
        requestArray(.authenticatedUserRepositories(filter: filter, sort: sort, direction: direction, numberOfPerPage: numberOfPerPage, page: page, since: since, before: before), type: Repository.self)
    }

    public func allAuthenticatedUserRepositories(filter: APIParameter.Filter?) -> Single<[Repository]> {
        requestAllObject { [unowned self] currentPage in
            authenticatedUserRepositories(filter: filter, sort: nil, direction: nil, numberOfPerPage: 100, page: currentPage, since: nil, before: nil)
        }
    }

    public func organizationRepositories(organization: String, type: APIParameter.RepositoriesType?, sort: APIParameter.Sort?, direction: APIParameter.Direction?, numberOfPerPage: Int?, page: Int?) -> Single<[Repository]> {
        requestArray(.organizationRepositories(organization: organization, type: type, sort: sort, direction: direction, numberOfPerPage: numberOfPerPage, page: page), type: Repository.self)
    }

    public func allOrganizationRepositories(organization: String, type: APIParameter.RepositoriesType?) -> Single<[Repository]> {
        requestAllObject { [unowned self] currentPage in
            organizationRepositories(organization: organization, type: type, sort: nil, direction: nil, numberOfPerPage: 100, page: currentPage)
        }
    }

    public func createFork(fullname: String, organization: String?, name: String?, isDefaultBranchOnly: Bool) -> Single<Repository> {
        requestObject(.createFork(fullname: fullname, organization: organization, name: name, isDefaultBranchOnly: isDefaultBranchOnly), type: Repository.self)
    }

    public func syncFork(fullname: String, branch: String) -> Single<SyncForkSuccessResponse> {
        requestObject(.syncFork(fullname: fullname, branch: branch), type: SyncForkSuccessResponse.self)
    }

    public func deleteRepository(fullname: String) -> Single<Void> {
        requestWithoutObject(.deleteRepository(fullname: fullname))
    }

    // MARK: - Trending

    public func trendingRepositories(language: String, since: String) -> Single<[TrendingRepository]> {
        trendingRequestArray(.trendingRepositories(language: language, since: since), type: TrendingRepository.self)
    }

    public func trendingDevelopers(language: String, since: String) -> Single<[TrendingUser]> {
        trendingRequestArray(.trendingDevelopers(language: language, since: since), type: TrendingUser.self)
    }

    public func languages() -> Single<[Language]> {
        trendingRequestArray(.languages, type: Language.self)
    }

    // MARK: Codetabs

    public func numberOfLines(fullname: String) -> Single<[LanguageLines]> {
        codetabsRequestArray(.numberOfLines(fullname: fullname), type: LanguageLines.self)
    }
}

extension RxGitHubClient {
    private func request(_ target: GithubTarget) -> Single<Any> {
        githubProvider.request(target)
            .mapJSON()
            .observe(on: MainScheduler.instance)
            .asSingle()
    }

    private func requestWithoutMapping(_ target: GithubTarget) -> Single<Moya.Response> {
        githubProvider.request(target)
            .observe(on: MainScheduler.instance)
            .asSingle()
    }

    private func requestObject<T: Decodable>(_ target: GithubTarget, type: T.Type) -> Single<T> {
        githubProvider.request(target)
            .decodeObject(T.self)
            .observe(on: MainScheduler.instance)
            .asSingle()
    }

    private func requestArray<T: Decodable>(_ target: GithubTarget, type: T.Type) -> Single<[T]> {
        githubProvider.request(target)
            .decodeArray(T.self)
            .observe(on: MainScheduler.instance)
            .asSingle()
    }

    private func requestWithoutObject(_ target: GithubTarget) -> Single<Void> {
        requestWithoutMapping(target).map { _ in }
    }

    private func requestAllObject<Result>(api: @escaping (_ currentPage: Int) -> Single<[Result]>) -> Single<[Result]> {
        return Single.create { [unowned self] observer in
            var allRepositories = [Result]()
            var currentPage = 1

            func fetchNextPage() {
                api(currentPage).asObservable()
                    .subscribe(
                        onNext: { repositories in
                            if repositories.isEmpty {
                                // 如果返回的仓库列表为空，则认为已经到达最后一页
                                observer(.success(allRepositories))
                            } else {
                                // 如果返回的仓库列表不为空，则将获取到的仓库添加到所有仓库的数组中
                                allRepositories.append(contentsOf: repositories)
                                currentPage += 1
                                fetchNextPage() // 递归调用以获取下一页
                            }
                        },
                        onError: { error in
                            observer(.failure(error))
                        }
                    )
                    .disposed(by: disposeBag)
            }

            fetchNextPage() // 开始从第一页获取数据
            return Disposables.create()
        }
    }
}

extension RxGitHubClient {
    private func trendingRequestObject<T: Decodable>(_ target: TrendingGithubTarget, type: T.Type) -> Single<T> {
        trendingGithubProvider.request(target)
            .decodeObject(T.self)
            .observe(on: MainScheduler.instance)
            .asSingle()
    }

    private func trendingRequestArray<T: Decodable>(_ target: TrendingGithubTarget, type: T.Type) -> Single<[T]> {
        trendingGithubProvider.request(target)
            .decodeArray(T.self)
            .observe(on: MainScheduler.instance)
            .asSingle()
    }
}

extension RxGitHubClient {
    private func codetabsRequestArray<T: Decodable>(_ target: CodetabsTarget, type: T.Type) -> Single<[T]> {
        codetabsProvider.request(target)
            .decodeArray(T.self)
            .observe(on: MainScheduler.instance)
            .asSingle()
    }
}
