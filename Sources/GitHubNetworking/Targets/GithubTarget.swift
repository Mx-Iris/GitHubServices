import Moya
//import Alamofire
//import SwiftDate
import Foundation
import ArrayBuilderModule
import GitHubModels

package enum GithubTarget {
    // MARK: - Authentication is optional

    case repository(fullname: String)
    case watchers(fullname: String, page: Int)
    case stargazers(fullname: String, page: Int)
    case forks(fullname: String, page: Int)
    case readme(fullname: String, ref: String?)

    /// Contents
    case content(fullname: String, path: String, ref: String?)
    case createOrUpdateContent(fullname: String, path: String, message: String, content: String, sha: String?, branch: String?, committer: Committer?, author: Committer?)

    case issues(fullname: String, state: String, page: Int)
    case issue(fullname: String, number: Int)
    case issueComments(fullname: String, number: Int, page: Int)
    case commits(fullname: String, page: Int)
    case commit(fullname: String, sha: String)
    case branches(fullname: String, page: Int)
    case branch(fullname: String, name: String)
    case releases(fullname: String, page: Int)
    case release(fullname: String, releaseId: Int)
    case pullRequests(fullname: String, state: String, page: Int)
    case pullRequest(fullname: String, number: Int)
    case pullRequestComments(fullname: String, number: Int, page: Int)
    case contributors(fullname: String, page: Int)
    case deleteRepository(fullname: String)

    case searchRepositories(query: String, sort: String, order: String, page: Int)
    case userRepositories(username: String, type: APIParameter.RepositoriesType?, sort: APIParameter.Sort?, page: Int, numberOfPerPage: Int?)
    case userStarredRepositories(username: String, sort: APIParameter.Sort?, direction: APIParameter.Direction?, numberOfPerPage: Int?, page: Int)
    case userWatchingRepositories(username: String, page: Int)
    case organizationRepositories(organization: String, type: APIParameter.RepositoriesType?, sort: APIParameter.Sort?, direction: APIParameter.Direction?, numberOfPerPage: Int?, page: Int?)
    case authenticatedUserRepositories(filter: APIParameter.Filter?, sort: APIParameter.Sort?, direction: APIParameter.Direction?, numberOfPerPage: Int?, page: Int?, since: Date?, before: Date?)

    // MARK: - Events

    case events(page: Int)
    case repositoryEvents(owner: String, repo: String, page: Int)
    case userReceivedEvents(username: String, page: Int)
    case userPerformedEvents(username: String, page: Int)
    case organizationEvents(username: String, page: Int)

    // MARK: - User & Organizations

    case authenticatedUser
    case authenticatedUserOrganizations(numberOfPerPage: Int?, page: Int?)
    case user(owner: String)
    case organization(owner: String)
    case searchUsers(query: String, sort: String, order: String, page: Int)
    case followUser(username: String)
    case checkFollowing(username: String)
    case unfollowUser(username: String)
    case userFollowers(username: String, page: Int)
    case userFollowing(username: String, page: Int)

    // MARK: - Notifications

    case notifications(all: Bool, participating: Bool, page: Int)
    case repositoryNotifications(fullname: String, all: Bool, participating: Bool, page: Int)
    case markAsReadNotifications
    case markAsReadRepositoryNotifications(fullname: String)

    // MARK: - Starring

    case checkStarring(fullname: String)
    case starRepository(fullname: String)
    case unstarRepository(fullname: String)

    // MARK: - Forks

    case createFork(fullname: String, organization: String?, name: String?, isDefaultBranchOnly: Bool)
    case syncFork(fullname: String, branch: String)

    // MARK: - Actions

    case organizationDefaultWorkflowPermissions(organization: String)
    case setOrganizationDefaultWorkflowPermissions(organization: String, defaultWorkflowPermissions: DefaultWorkflowPermissions, isCanApprovePullRequestReviews: Bool?)
}

extension GithubTarget: TargetType {
    package var baseURL: URL {
        Configs.Network.githubRestBaseURL
    }

    package var path: String {
        switch self {
        case .searchRepositories: "/search/repositories"
        case let .repository(fullname),
             let .deleteRepository(fullname): "/repos/\(fullname)"
        case let .watchers(fullname, _): "/repos/\(fullname)/subscribers"
        case let .stargazers(fullname, _): "/repos/\(fullname)/stargazers"
        case let .forks(fullname, _): "/repos/\(fullname)/forks"
        case let .readme(fullname, _): "/repos/\(fullname)/readme"
        case let .content(fullname, path, _): "/repos/\(fullname)/contents/\(path)"
        case let .createOrUpdateContent(fullname, path, _, _, _, _, _, _): "/repos/\(fullname)/contents/\(path)"
        case let .issues(fullname, _, _): "/repos/\(fullname)/issues"
        case let .issue(fullname, number): "/repos/\(fullname)/issues/\(number)"
        case let .issueComments(fullname, number, _): "/repos/\(fullname)/issues/\(number)/comments"
        case let .commits(fullname, _): "/repos/\(fullname)/commits"
        case let .commit(fullname, sha): "/repos/\(fullname)/commits/\(sha)"
        case let .branches(fullname, _): "/repos/\(fullname)/branches"
        case let .branch(fullname, name): "/repos/\(fullname)/branches/\(name)"
        case let .releases(fullname, _): "/repos/\(fullname)/releases"
        case let .release(fullname, releaseId): "/repos/\(fullname)/releases/\(releaseId)"
        case let .pullRequests(fullname, _, _): "/repos/\(fullname)/pulls"
        case let .pullRequest(fullname, number): "/repos/\(fullname)/pulls/\(number)"
        case let .pullRequestComments(fullname, number, _): "/repos/\(fullname)/pulls/\(number)/comments"
        case let .contributors(fullname, _): "/repos/\(fullname)/contributors"
        case .searchUsers: "/search/users"
        case let .user(owner): "/users/\(owner)"
        case let .organization(owner): "/orgs/\(owner)"
        case let .userRepositories(username, _, _, _, _): "/users/\(username)/repos"
        case let .userStarredRepositories(username, _, _, _, _): "/users/\(username)/starred"
        case let .userWatchingRepositories(username, _): "/users/\(username)/subscriptions"
        case let .userFollowers(username, _): "/users/\(username)/followers"
        case let .userFollowing(username, _): "/users/\(username)/following"
        case .events: "/events"
        case let .repositoryEvents(owner, repo, _): "/repos/\(owner)/\(repo)/events"
        case let .userReceivedEvents(username, _): "/users/\(username)/received_events"
        case let .userPerformedEvents(username, _): "/users/\(username)/events"
        case let .organizationEvents(username, _): "/orgs/\(username)/events"

        case .authenticatedUser: "/user"
        case .authenticatedUserOrganizations: "/user/orgs"
        case .notifications,
             .markAsReadNotifications: "/notifications"
        case let .repositoryNotifications(fullname, _, _, _),
             let .markAsReadRepositoryNotifications(fullname): "/repos/\(fullname)/notifications"
        case let .checkStarring(fullname),
             let .starRepository(fullname),
             let .unstarRepository(fullname): "/user/starred/\(fullname)"
        case let .checkFollowing(username),
             let .followUser(username),
             let .unfollowUser(username): "/user/following/\(username)"

        case let .syncFork(fullname, _): "/repos/\(fullname)/merge-upstream"
        case let .createFork(fullname, _, _, _): "/repos/\(fullname)/forks"
        case .authenticatedUserRepositories: "/user/repos"
        case let .organizationRepositories(organization, _, _, _, _, _): "/orgs/\(organization)/repos"
        case let .organizationDefaultWorkflowPermissions(organization): "/orgs/\(organization)/actions/permissions/workflow"
        case let .setOrganizationDefaultWorkflowPermissions(organization, _, _): "/orgs/\(organization)/actions/permissions/workflow"
        }
    }

    package var method: Moya.Method {
        switch self {
        case .starRepository,
             .followUser,
             .markAsReadNotifications,
             .markAsReadRepositoryNotifications,
             .createOrUpdateContent,
             .setOrganizationDefaultWorkflowPermissions:
            .put
        case .unstarRepository,
             .unfollowUser,
             .deleteRepository:
            .delete
        case .syncFork,
             .createFork:
            .post
        default:
            .get
        }
    }

    package var headers: [String: String]? {
        nil
    }

    package var parameters: [String: Any]? {
        var params: [String: Any] = [:]
        switch self {
        case let .searchRepositories(query, sort, order, page):
            params["q"] = query
            params["sort"] = sort
            params["order"] = order
            params["page"] = page
        case let .watchers(_, page):
            params["page"] = page
        case let .stargazers(_, page):
            params["page"] = page
        case let .forks(_, page):
            params["page"] = page
        case let .readme(_, ref):
            params["ref"] = ref
        case let .content(_, _, ref):
            params["ref"] = ref
        case let .issues(_, state, page):
            params["state"] = state
            params["page"] = page
        case let .issueComments(_, _, page):
            params["page"] = page
        case let .commits(_, page):
            params["page"] = page
        case let .branches(_, page):
            params["page"] = page
        case let .releases(_, page):
            params["page"] = page
        case let .pullRequests(_, state, page):
            params["state"] = state
            params["page"] = page
        case let .pullRequestComments(_, _, page):
            params["page"] = page
        case let .contributors(_, page):
            params["page"] = page
        case let .searchUsers(query, sort, order, page):
            params["q"] = query
            params["sort"] = sort
            params["order"] = order
            params["page"] = page
        case let .userRepositories(_, type, sort, page, numberOfPage):
            if let type {
                params["type"] = type.rawValue
            }
            if let sort {
                params["sort"] = sort.rawValue
            }
            params["page"] = page
            params["per_page"] = numberOfPage ?? 30
        case let .userStarredRepositories(_, sort, direction, numberOfPage, page):
            APIParameterBuilder.build(&params) {
                sort
                direction
                APIParameter.numberOfPerPage(numberOfPage ?? 0)
                APIParameter.page(page)
            }
        case let .userWatchingRepositories(_, page):
            params["page"] = page
        case let .userFollowers(_, page):
            params["page"] = page
        case let .userFollowing(_, page):
            params["page"] = page
        case let .events(page):
            params["page"] = page
        case let .repositoryEvents(_, _, page):
            params["page"] = page
        case let .userReceivedEvents(_, page):
            params["page"] = page
        case let .userPerformedEvents(_, page):
            params["page"] = page
        case let .organizationEvents(_, page):
            params["page"] = page
        case let .notifications(all, participating, page),
             let .repositoryNotifications(_, all, participating, page):
            params["all"] = all
            params["participating"] = participating
            params["page"] = page
        case let .authenticatedUserRepositories(filter, sort, direction, numberOfPerPage, page, since, before):

            if let filter {
                switch filter {
                case let .type(repositoriesType):
                    if let repositoriesType {
                        params["type"] = repositoriesType.rawValue
                    }
                case let .visibilityAndAffiliation(visibility, affiliations):
                    if let visibility {
                        params["visibility"] = visibility.rawValue
                    }
                    if let affiliations {
                        params["affiliation"] = affiliations.map(\.rawValue).joined(separator: ",")
                    }
                }
            }

            if let sort {
                params["sort"] = sort.rawValue
            }
            if let direction {
                params["direction"] = direction.rawValue
            }
            if let numberOfPerPage {
                params["per_page"] = numberOfPerPage
            }
            if let page {
                params["page"] = page
            }
            if let since {
                params["since"] = since.toISO()
            }
            if let before {
                params["before"] = before.toISO()
            }
        case let .organizationRepositories(organization, type, sort, direction, numberOfPage, page):
            params["org"] = organization
            if let type {
                params["type"] = type.rawValue
            }
            if let sort {
                params["sort"] = sort.rawValue
            }
            if let direction {
                params["direction"] = direction.rawValue
            }
            if let numberOfPage {
                params["per_page"] = numberOfPage
            }
            if let page {
                params["page"] = page
            }
        case let .authenticatedUserOrganizations(numberOfPerPage, page):
            if let numberOfPerPage {
                params["per_page"] = numberOfPerPage
            }
            if let page {
                params["page"] = page
            }

        default:
            return nil
        }
        return params
    }

    package var parameterEncoding: ParameterEncoding {
        URLEncoding.default
    }

    package var bodyParameters: [String: Any]? {
        APIParameterBuilder.build {
            switch self {
            case let .syncFork(_, branch):
                AnyAPIParameter(key: "branch", value: branch)
            case let .createFork(_, organization, name, isDefaultBranchOnly):
                AnyAPIParameter(key: "organization", value: organization)
                AnyAPIParameter(key: "name", value: name)
                AnyAPIParameter(key: "default_branch_only", value: isDefaultBranchOnly)
            case let .createOrUpdateContent(_, _, message, content, sha, branch, committer, author):
                AnyAPIParameter(key: "message", value: message)
                AnyAPIParameter(key: "content", value: content)
                AnyAPIParameter(key: "sha", value: sha)
                AnyAPIParameter(key: "branch", value: branch)
                committer?.asParameter(.committer)
                author?.asParameter(.author)
            case let .setOrganizationDefaultWorkflowPermissions(_, defaultWorkflowPermissions, isCanApprovePullRequestReviews):
                defaultWorkflowPermissions
                AnyAPIParameter(key: "can_approve_pull_request_reviews", value: isCanApprovePullRequestReviews)
            default:
                NullAPIParameter()
            }
        }
    }

    package var bodyEncoding: ParameterEncoding {
        return JSONEncoding.default
    }

    package var task: Task {
        if let parameters, let bodyParameters, !parameters.isEmpty, !bodyParameters.isEmpty {
            return .requestCompositeParameters(bodyParameters: bodyParameters, bodyEncoding: bodyEncoding, urlParameters: parameters)
        } else if let parameters, !parameters.isEmpty {
            return .requestParameters(parameters: parameters, encoding: parameterEncoding)
        } else if let bodyParameters, !bodyParameters.isEmpty {
            return .requestCompositeParameters(bodyParameters: bodyParameters, bodyEncoding: bodyEncoding, urlParameters: [:])
        } else {
            return .requestPlain
        }
    }
}
