import Moya
import Apollo
import ApolloAPI
import Foundation
import GitHubModels
import GitHubGraphQLAPI
import GitHubServicesHelpers

public final class GitHubClient: GitHubAPI {
    private let githubProvider: GitHubProvider
    private let trendingGithubProvider: TrendingGitHubProvider
    private let codetabsProvider: CodetabsProvider
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

    public init(token: Token?, privateToken: Token? = nil) {
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
}

@AddAsyncAllMembers
extension GitHubClient {
    public static func accessToken(clientID: String, clientSecret: String, code: String, redirectURI: String?, state: String?, completion: @escaping (Result<Token, Error>) -> Void) {
        guard let url = URL(string: "https://github.com/login/oauth/access_token") else {
            completion(.failure(NSError(domain: "InvalidURL", code: -1, userInfo: nil)))
            return
        }

        var params: [String: String] = [:]
        params["client_id"] = clientID
        params["client_secret"] = clientSecret
        params["code"] = code

        if let redirectURI = redirectURI {
            params["redirect_uri"] = redirectURI
        }

        if let state = state {
            params["state"] = state
        }

        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Accept")

        let queryItems = params.map { URLQueryItem(name: $0.key, value: $0.value) }
        var components = URLComponents()
        components.queryItems = queryItems
        request.httpBody = components.query?.data(using: .utf8)

        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }

            guard let data = data else {
                completion(.failure(NSError(domain: "NoData", code: -2, userInfo: nil)))
                return
            }

            do {
                let decoder = JSONDecoder()
                let token = try decoder.decode(Token.self, from: data)
                completion(.success(token))
            } catch {
                completion(.failure(error))
            }
        }

        task.resume()
    }

    @available(*, deprecated, renamed: "accessToken(clientID:clientSecret:code:redirectURI:state:)")
    public static func createAccessToken(clientId: String, clientSecret: String, code: String, redirectURI: String?, state: String?, completion: @escaping (Result<Token, Error>) -> Void) {
        return accessToken(clientID: clientId, clientSecret: clientSecret, code: code, redirectURI: redirectURI, state: state, completion: completion)
    }
}

@AddAsyncAllMembers
extension GitHubClient {
    public func searchRepositories(query: String, sort: String, order: String, page: Int, endCursor: String?, completion: @escaping (Result<GitHubModels.RepositorySearch, Error>) -> Void) {
        requestObject(.searchRepositories(query: query, sort: sort, order: order, page: page), type: RepositorySearch.self, completion: completion)
    }

    public func repository(fullname: String, qualifiedName: String, completion: @escaping (Result<GitHubModels.Repository, Error>) -> Void) {
        requestObject(.repository(fullname: fullname), type: Repository.self, completion: completion)
    }

    public func watchers(fullname: String, page: Int, completion: @escaping (Result<[GitHubModels.User], Error>) -> Void) {
        requestArray(.watchers(fullname: fullname, page: page), type: User.self, completion: completion)
    }

    public func stargazers(fullname: String, page: Int, completion: @escaping (Result<[GitHubModels.User], Error>) -> Void) {
        requestArray(.stargazers(fullname: fullname, page: page), type: User.self, completion: completion)
    }

    public func forks(fullname: String, page: Int, completion: @escaping (Result<[GitHubModels.Repository], Error>) -> Void) {
        requestArray(.forks(fullname: fullname, page: page), type: Repository.self, completion: completion)
    }

    public func readme(fullname: String, ref: String?, completion: @escaping (Result<GitHubModels.Content, Error>) -> Void) {
        requestObject(.readme(fullname: fullname, ref: ref), type: Content.self, completion: completion)
    }

    public func content(fullname: String, path: String, ref: String?, completion: @escaping (Result<GitHubModels.Content, Error>) -> Void) {
        requestObject(.content(fullname: fullname, path: path, ref: ref), type: Content.self, completion: completion)
    }

    public func createOrUpdateContent(fullname: String, path: String, message: String, content: String, sha: String?, branch: String?, committer: Committer?, author: Committer?, completion: @escaping (Result<(content: Content?, commit: Commit), Error>) -> Void) {
        struct CreateOrUpdateResponse: Codable {
            let content: Content?
            let commit: Commit
        }

        requestObject(.createOrUpdateContent(fullname: fullname, path: path, message: message, content: content, sha: sha, branch: branch, committer: committer, author: author), type: CreateOrUpdateResponse.self) { result in
            switch result {
            case .success(let response):
                completion(.success((content: response.content, commit: response.commit)))
            case .failure(let failure):
                completion(.failure(failure))
            }
        }
    }

    public func createOrUpdateWorkflowFile(fullname: String, filename: String, content: String, sha: String?, message: String, committer: Committer?, completion: @escaping (Result<(content: Content?, commit: Commit), Error>) -> Void) {
        createOrUpdateContent(fullname: fullname, path: ".github/workflows/\(filename)", message: message, content: content, sha: sha, branch: nil, committer: committer, author: nil, completion: completion)
    }

    public func workflowFile(fullname: String, filename: String, ref: String?, completion: @escaping (Result<Content, Error>) -> Void) {
        content(fullname: fullname, path: ".github/workflows/\(filename)", ref: ref, completion: completion)
    }

    public func issues(fullname: String, state: String, page: Int, completion: @escaping (Result<[GitHubModels.Issue], Error>) -> Void) {
        requestArray(.issues(fullname: fullname, state: state, page: page), type: Issue.self, completion: completion)
    }

    public func issue(fullname: String, number: Int, completion: @escaping (Result<GitHubModels.Issue, Error>) -> Void) {
        requestObject(.issue(fullname: fullname, number: number), type: Issue.self, completion: completion)
    }

    public func issueComments(fullname: String, number: Int, page: Int, completion: @escaping (Result<[GitHubModels.Comment], Error>) -> Void) {
        requestArray(.issueComments(fullname: fullname, number: number, page: page), type: Comment.self, completion: completion)
    }

    public func commits(fullname: String, page: Int, completion: @escaping (Result<[GitHubModels.Commit], Error>) -> Void) {
        requestArray(.commits(fullname: fullname, page: page), type: Commit.self, completion: completion)
    }

    public func commit(fullname: String, sha: String, completion: @escaping (Result<GitHubModels.Commit, Error>) -> Void) {
        requestObject(.commit(fullname: fullname, sha: sha), type: Commit.self, completion: completion)
    }

    public func branches(fullname: String, page: Int, completion: @escaping (Result<[GitHubModels.Branch], Error>) -> Void) {
        requestArray(.branches(fullname: fullname, page: page), type: Branch.self, completion: completion)
    }

    public func branch(fullname: String, name: String, completion: @escaping (Result<GitHubModels.Branch, Error>) -> Void) {
        requestObject(.branch(fullname: fullname, name: name), type: Branch.self, completion: completion)
    }

    public func releases(fullname: String, page: Int, completion: @escaping (Result<[GitHubModels.Release], Error>) -> Void) {
        requestArray(.releases(fullname: fullname, page: page), type: Release.self, completion: completion)
    }

    public func release(fullname: String, releaseId: Int, completion: @escaping (Result<GitHubModels.Release, Error>) -> Void) {
        requestObject(.release(fullname: fullname, releaseId: releaseId), type: Release.self, completion: completion)
    }

    public func pullRequests(fullname: String, state: String, page: Int, completion: @escaping (Result<[GitHubModels.PullRequest], Error>) -> Void) {
        requestArray(.pullRequests(fullname: fullname, state: state, page: page), type: PullRequest.self, completion: completion)
    }

    public func pullRequest(fullname: String, number: Int, completion: @escaping (Result<GitHubModels.PullRequest, Error>) -> Void) {
        requestObject(.pullRequest(fullname: fullname, number: number), type: PullRequest.self, completion: completion)
    }

    public func pullRequestComments(fullname: String, number: Int, page: Int, completion: @escaping (Result<[GitHubModels.Comment], Error>) -> Void) {
        requestArray(.pullRequestComments(fullname: fullname, number: number, page: page), type: Comment.self, completion: completion)
    }

    public func contributors(fullname: String, page: Int, completion: @escaping (Result<[GitHubModels.User], Error>) -> Void) {
        requestArray(.contributors(fullname: fullname, page: page), type: User.self, completion: completion)
    }

    public func searchUsers(query: String, sort: String, order: String, page: Int, endCursor: String?, completion: @escaping (Result<GitHubModels.UserSearch, Error>) -> Void) {
        requestObject(.searchUsers(query: query, sort: sort, order: order, page: page), type: UserSearch.self, completion: completion)
    }

    public func user(owner: String, completion: @escaping (Result<GitHubModels.User, Error>) -> Void) {
        requestObject(.user(owner: owner), type: User.self, completion: completion)
    }

    public func organization(owner: String, completion: @escaping (Result<GitHubModels.User, Error>) -> Void) {
        requestObject(.organization(owner: owner), type: User.self, completion: completion)
    }

    public func userRepositories(username: String, type: APIParameter.RepositoriesType?, sort: APIParameter.Sort?, page: Int, numberOfPerPage: Int?, completion: @escaping (Result<[GitHubModels.Repository], Error>) -> Void) {
        requestArray(.userRepositories(username: username, type: type, sort: sort, page: page, numberOfPerPage: numberOfPerPage), type: Repository.self, completion: completion)
    }

    public func allUserRepositories(username: String, type: APIParameter.RepositoriesType?, sort: APIParameter.Sort?, completion: @escaping (Result<[Repository], Error>) -> Void) {
        requestAllObject(
            api: { [weak self] currentPage, innerCompletion in
                guard let self else {
                    completion(.failure(GitHubClientError.clientDidDealloc))
                    return
                }
                userRepositories(username: username, type: type, sort: sort, page: currentPage, numberOfPerPage: 100, completion: innerCompletion)

            },
            completion: completion
        )
    }

    public func userStarredRepositories(username: String, sort: APIParameter.Sort?, direction: APIParameter.Direction?, numberOfPerPage: Int?, page: Int, completion: @escaping (Result<[GitHubModels.Repository], Error>) -> Void) {
        requestArray(.userStarredRepositories(username: username, sort: sort, direction: direction, numberOfPerPage: numberOfPerPage, page: page), type: Repository.self, completion: completion)
    }

    public func allUserStarredRepositories(username: String, sort: APIParameter.Sort?, direction: APIParameter.Direction?, completion: @escaping (Result<[GitHubModels.Repository], Error>) -> Void) {
        requestAllObject(
            api: { [weak self] currentPage, innerCompletion in
                guard let self else {
                    completion(.failure(GitHubClientError.clientDidDealloc))
                    return
                }
                userStarredRepositories(username: username, sort: sort, direction: direction, numberOfPerPage: 100, page: currentPage, completion: innerCompletion)
            },
            completion: completion
        )
    }

    public func userWatchingRepositories(username: String, page: Int, completion: @escaping (Result<[GitHubModels.Repository], Error>) -> Void) {
        requestArray(.userWatchingRepositories(username: username, page: page), type: Repository.self, completion: completion)
    }

    public func userFollowers(username: String, page: Int, completion: @escaping (Result<[GitHubModels.User], Error>) -> Void) {
        requestArray(.userFollowers(username: username, page: page), type: User.self, completion: completion)
    }

    public func userFollowing(username: String, page: Int, completion: @escaping (Result<[GitHubModels.User], Error>) -> Void) {
        requestArray(.userFollowing(username: username, page: page), type: User.self, completion: completion)
    }

    public func events(page: Int, completion: @escaping (Result<[Event], Error>) -> Void) {
        requestArray(.events(page: page), type: Event.self, completion: completion)
    }

    public func repositoryEvents(owner: String, repo: String, page: Int, completion: @escaping (Result<[Event], Error>) -> Void) {
        requestArray(.repositoryEvents(owner: owner, repo: repo, page: page), type: Event.self, completion: completion)
    }

    public func userReceivedEvents(username: String, page: Int, completion: @escaping (Result<[Event], Error>) -> Void) {
        requestArray(.userReceivedEvents(username: username, page: page), type: Event.self, completion: completion)
    }

    public func userPerformedEvents(username: String, page: Int, completion: @escaping (Result<[Event], Error>) -> Void) {
        requestArray(.userPerformedEvents(username: username, page: page), type: Event.self, completion: completion)
    }

    public func organizationEvents(username: String, page: Int, completion: @escaping (Result<[Event], Error>) -> Void) {
        requestArray(.organizationEvents(username: username, page: page), type: Event.self, completion: completion)
    }

    public func authenticatedUserRepositories(filter: APIParameter.Filter?, sort: APIParameter.Sort?, direction: APIParameter.Direction?, numberOfPerPage: Int?, page: Int?, since: Date?, before: Date?, completion: @escaping (Result<[GitHubModels.Repository], Error>) -> Void) {
        requestArray(.authenticatedUserRepositories(filter: filter, sort: sort, direction: direction, numberOfPerPage: numberOfPerPage, page: page, since: since, before: before), type: Repository.self, completion: completion)
    }

    public func allAuthenticatedUserRepositories(filter: APIParameter.Filter?, completion: @escaping (Result<[GitHubModels.Repository], Error>) -> Void) {
        requestAllObject(
            api: { [weak self] currentPage, innerCompletion in
                guard let self else {
                    completion(.failure(GitHubClientError.clientDidDealloc))
                    return
                }
                authenticatedUserRepositories(filter: filter, sort: nil, direction: nil, numberOfPerPage: 100, page: currentPage, since: nil, before: nil, completion: innerCompletion)
            },
            completion: completion
        )
    }

    public func organizationRepositories(organization: String, type: APIParameter.RepositoriesType?, sort: APIParameter.Sort?, direction: APIParameter.Direction?, numberOfPerPage: Int?, page: Int?, completion: @escaping (Result<[GitHubModels.Repository], Error>) -> Void) {
        requestArray(.organizationRepositories(organization: organization, type: type, sort: sort, direction: direction, numberOfPerPage: numberOfPerPage, page: page), type: Repository.self, completion: completion)
    }

    public func allOrganizationRepositories(organization: String, type: APIParameter.RepositoriesType?, completion: @escaping (Result<[GitHubModels.Repository], Error>) -> Void) {
        requestAllObject(
            api: { [weak self] currentPage, innerCompletion in
                guard let self else {
                    completion(.failure(GitHubClientError.clientDidDealloc))
                    return
                }
                organizationRepositories(organization: organization, type: type, sort: nil, direction: nil, numberOfPerPage: 100, page: currentPage, completion: innerCompletion)
            },
            completion: completion
        )
    }

    public func createFork(fullname: String, organization: String?, name: String?, isDefaultBranchOnly: Bool, completion: @escaping (Result<GitHubModels.Repository, Error>) -> Void) {
        requestObject(.createFork(fullname: fullname, organization: organization, name: name, isDefaultBranchOnly: isDefaultBranchOnly), type: Repository.self, completion: completion)
    }

    public func syncFork(fullname: String, branch: String, completion: @escaping (Result<SyncForkSuccessResponse, Error>) -> Void) {
        requestObject(.syncFork(fullname: fullname, branch: branch), type: SyncForkSuccessResponse.self, completion: completion)
    }

    public func profile(completion: @escaping (Result<GitHubModels.User, Error>) -> Void) {
        authenticatedUser { [weak self] result in
            guard let self else {
                completion(.failure(GitHubClientError.clientDidDealloc))
                return
            }
            switch result {
            case .success(let user):
                authenticatedUserOrganizations(numberOfPerPage: 100, page: 1, isDetail: true) { result in
                    switch result {
                    case .success(let orgs):
                        var user = user
                        user.organizations = orgs
                        completion(.success(user))
                    case .failure(let failure):
                        completion(.failure(failure))
                    }
                }
            case .failure(let failure):
                completion(.failure(failure))
            }
        }
    }

    public func authenticatedUser(completion: @escaping (Result<GitHubModels.User, Error>) -> Void) {
        requestObject(.authenticatedUser, type: User.self, completion: completion)
    }

    public func authenticatedUserOrganizations(numberOfPerPage: Int?, page: Int?, isDetail: Bool, completion: @escaping (Result<[GitHubModels.User], Error>) -> Void) {
        requestArray(.authenticatedUserOrganizations(numberOfPerPage: numberOfPerPage, page: page), type: User.self) { [weak self] result in
            guard let self else {
                completion(.failure(GitHubClientError.clientDidDealloc))
                return
            }
            switch result {
            case .success(let orgs):
                if isDetail {
                    DispatchQueue.global().async {
                        let semaphore = DispatchSemaphore(value: 0)
                        var detailOrgs: [User] = []
                        var hasError: Error?
                        for org in orgs {
                            if let hasError {
                                completion(.failure(hasError))
                                return
                            }
                            self.organization(owner: org.login) { result in
                                switch result {
                                case .success(let org):
                                    detailOrgs.append(org)
                                case .failure(let failure):
                                    hasError = failure
                                }
                                semaphore.signal()
                            }
                            semaphore.wait()
                        }
                        completion(.success(detailOrgs))
                    }
                } else {
                    completion(.success(orgs))
                }
            case .failure(let failure):
                completion(.failure(failure))
            }
        }
    }

    public func notifications(all: Bool, participating: Bool, page: Int, completion: @escaping (Result<[Notification], Error>) -> Void) {
        requestArray(.notifications(all: all, participating: participating, page: page), type: Notification.self, completion: completion)
    }

    public func repositoryNotifications(fullname: String, all: Bool, participating: Bool, page: Int, completion: @escaping (Result<[Notification], Error>) -> Void) {
        requestArray(.repositoryNotifications(fullname: fullname, all: all, participating: participating, page: page), type: Notification.self, completion: completion)
    }

    public func markAsReadNotifications(completion: @escaping (Result<Void, Error>) -> Void) {
        requestWithoutObject(.markAsReadNotifications, completion: completion)
    }

    public func markAsReadRepositoryNotifications(fullname: String, completion: @escaping (Result<Void, Error>) -> Void) {
        requestWithoutObject(.checkStarring(fullname: fullname), completion: completion)
    }

    public func checkStarring(fullname: String, completion: @escaping (Result<Void, Error>) -> Void) {
        requestWithoutObject(.checkStarring(fullname: fullname), completion: completion)
    }

    public func starRepository(fullname: String, completion: @escaping (Result<Void, Error>) -> Void) {
        requestWithoutObject(.starRepository(fullname: fullname), completion: completion)
    }

    public func unstarRepository(fullname: String, completion: @escaping (Result<Void, Error>) -> Void) {
        requestWithoutObject(.unstarRepository(fullname: fullname), completion: completion)
    }

    public func checkFollowing(username: String, completion: @escaping (Result<Void, Error>) -> Void) {
        requestWithoutObject(.checkFollowing(username: username), completion: completion)
    }

    public func followUser(username: String, completion: @escaping (Result<Void, Error>) -> Void) {
        requestWithoutObject(.followUser(username: username), completion: completion)
    }

    public func unfollowUser(username: String, completion: @escaping (Result<Void, Error>) -> Void) {
        requestWithoutObject(.unfollowUser(username: username), completion: completion)
    }

    public func deleteRepository(fullname: String, completion: @escaping (Result<Void, Error>) -> Void) {
        requestWithoutObject(.deleteRepository(fullname: fullname), completion: completion)
    }

    public func trendingRepositories(language: String, since: String, completion: @escaping (Result<[GitHubModels.TrendingRepository], Error>) -> Void) {
        trendingRequestArray(.trendingRepositories(language: language, since: since), type: TrendingRepository.self, completion: completion)
    }

    public func trendingDevelopers(language: String, since: String, completion: @escaping (Result<[GitHubModels.TrendingUser], Error>) -> Void) {
        trendingRequestArray(.trendingDevelopers(language: language, since: since), type: TrendingUser.self, completion: completion)
    }

    public func languages(completion: @escaping (Result<[GitHubModels.Language], Error>) -> Void) {
        trendingRequestArray(.languages, type: Language.self, completion: completion)
    }

    public func numberOfLines(fullname: String, completion: @escaping (Result<[GitHubModels.LanguageLines], Error>) -> Void) {
        codetabsRequestArray(.numberOfLines(fullname: fullname), type: LanguageLines.self, completion: completion)
    }

    public func userLists(login: String, first: Int?, after: String?, skipSuggestions: Bool?, completion: @escaping (Result<[GitHubModels.UserList]?, Error>) -> Void) {
        privateClient.fetch(query: UserListsQuery(login: login, first: (first ?? 100).graphQLNullable, after: after.graphQLNullable, skipSuggestions: skipSuggestions ?? true)) { result in
            switch result {
            case .success(let data):
                guard let data = data.data else {
                    completion(.success(nil))
                    return
                }
                completion(.success(data.user?.lists.nodes.map { $0.compactMap { $0 }.map { UserList(fragment: $0.fragments.userListFragment) } } ?? []))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }

    public func organizationDefaultWorkflowPermissions(organization: String, completion: @escaping (Result<DefaultWorkflowPermissionsInfo, Error>) -> Void) {
        requestObject(.organizationDefaultWorkflowPermissions(organization: organization), type: DefaultWorkflowPermissionsInfo.self, completion: completion)
    }

    public func setOrganizationDefaultWorkflowPermissions(organization: String, defaultWorkflowPermissions: DefaultWorkflowPermissions, isCanApprovePullRequestReviews: Bool?, completion: @escaping (Result<Void, Error>) -> Void) {
        requestWithoutObject(.setOrganizationDefaultWorkflowPermissions(organization: organization, defaultWorkflowPermissions: defaultWorkflowPermissions, isCanApprovePullRequestReviews: isCanApprovePullRequestReviews), completion: completion)
    }
}

@AddAsyncAllMembers
extension GitHubClient {
    @discardableResult
    private func request(_ target: GithubTarget, completion: @escaping (Result<Any, Error>) -> Void) -> Cancellable {
        githubProvider.request(target, callbackQueue: .main) { result in
            do {
                switch result {
                case .success(let response):
                    let json = try response.mapJSON()
                    completion(.success(json))
                case .failure(let failure):
                    throw failure
                }
            } catch {
                completion(.failure(error))
            }
        }
    }

    @discardableResult
    private func requestWithoutMapping(_ target: GithubTarget, completion: @escaping (Result<Moya.Response, Error>) -> Void) -> Cancellable {
        githubProvider.request(target, callbackQueue: .main) { result in
            completion(result)
        }
    }

    @discardableResult
    private func requestObject<T: Decodable>(_ target: GithubTarget, type: T.Type, completion: @escaping (Result<T, Error>) -> Void) -> Cancellable {
        githubProvider.request(target, callbackQueue: .main) { result in
            do {
                switch result {
                case .success(let response):
                    let object = try response.map(T.self)
                    completion(.success(object))
                case .failure(let failure):
                    throw failure
                }
            } catch {
                completion(.failure(error))
            }
        }
    }

    @discardableResult
    private func requestArray<T: Decodable>(_ target: GithubTarget, type: T.Type, completion: @escaping (Result<[T], Error>) -> Void) -> Cancellable {
        githubProvider.request(target, callbackQueue: .main) { result in
            do {
                switch result {
                case .success(let response):
                    let object = try response.map([T].self)
                    completion(.success(object))
                case .failure(let failure):
                    throw failure
                }
            } catch {
                completion(.failure(error))
            }
        }
    }

    @discardableResult
    private func requestWithoutObject(_ target: GithubTarget, completion: @escaping (Result<Void, Error>) -> Void) -> Cancellable {
        githubProvider.request(target, callbackQueue: .main) { result in
            do {
                switch result {
                case .success:
                    completion(.success(()))
                case .failure(let failure):
                    throw failure
                }
            } catch {
                completion(.failure(error))
            }
        }
    }

    private func requestAllObject<Object>(api: @escaping (_ currentPage: Int, _ completion: @escaping (Result<[Object], Error>) -> Void) -> Void, completion: @escaping (Result<[Object], Error>) -> Void) {
        var allObjects = [Object]()
        var currentPage = 1

        func fetchNextPage() {
            api(currentPage) { result in
                switch result {
                case .success(let objects):
                    if objects.isEmpty {
                        // 如果返回的仓库列表为空，则认为已经到达最后一页
                        completion(.success(allObjects))
                    } else {
                        // 如果返回的仓库列表不为空，则将获取到的仓库添加到所有仓库的数组中
                        allObjects.append(contentsOf: objects)
                        currentPage += 1
                        fetchNextPage() // 递归调用以获取下一页
                    }
                case .failure(let error):
                    completion(.failure(error))
                }
            }
        }

        fetchNextPage() // 开始从第一页获取数据
    }
}

@AddAsyncAllMembers
extension GitHubClient {
    @discardableResult
    private func trendingRequestObject<T: Decodable>(_ target: TrendingGithubTarget, type: T.Type, completion: @escaping (Result<T, Error>) -> Void) -> Cancellable {
        trendingGithubProvider.request(target, callbackQueue: .main) { result in
            do {
                switch result {
                case .success(let response):
                    let object = try response.map(T.self)
                    completion(.success(object))
                case .failure(let failure):
                    throw failure
                }
            } catch {
                completion(.failure(error))
            }
        }
    }

    @discardableResult
    private func trendingRequestArray<T: Decodable>(_ target: TrendingGithubTarget, type: T.Type, completion: @escaping (Result<[T], Error>) -> Void) -> Cancellable {
        trendingGithubProvider.request(target, callbackQueue: .main) { result in
            do {
                switch result {
                case .success(let response):
                    let object = try response.map([T].self)
                    completion(.success(object))
                case .failure(let failure):
                    throw failure
                }
            } catch {
                completion(.failure(error))
            }
        }
    }
}

@AddAsyncAllMembers
extension GitHubClient {
    @discardableResult
    private func codetabsRequestArray<T: Decodable>(_ target: CodetabsTarget, type: T.Type, completion: @escaping (Result<[T], Error>) -> Void) -> Cancellable {
        codetabsProvider.request(target, callbackQueue: .main) { result in
            do {
                switch result {
                case .success(let response):
                    let object = try response.map([T].self)
                    completion(.success(object))
                case .failure(let failure):
                    throw failure
                }
            } catch {
                completion(.failure(error))
            }
        }
    }
}
