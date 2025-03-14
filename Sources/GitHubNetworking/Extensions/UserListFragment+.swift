import Foundation
import GitHubModels
import GitHubGraphQLAPI

extension UserList {
    package init(fragment: UserListFragment) {
        self.init(
            id: fragment.id,
            name: fragment.name,
            isPrivate: fragment.isPrivate,
            description: fragment.description,
            items: fragment.items.totalCount,
            slug: fragment.slug
        )
    }
}

extension List {
    package init(graphList: ListQuery.Data.List) {
        self.init(
            owner: .init(
                id: graphList.owner.id,
                login: graphList.owner.login,
                isViewer: graphList.owner.isViewer,
                avatarURL: .init(string: graphList.owner.avatarUrl),
                privateProfile: graphList.owner.privateProfile
            ),
            userList: .init(fragment: graphList.fragments.userListFragment),
            starredRepos: .init(
                pageInfo: .init(
                    hasNextPage: graphList.starredRepos.pageInfo.hasNextPage,
                    endCursor: graphList.starredRepos.pageInfo.endCursor
                ),
                items: graphList.starredRepos.nodes?.compactMap {
                    $0?.asRepository.map {
                        RepositoryListItem(
                            id: $0.id,
                            primaryLanguage: .init(rawValue: $0.primaryLanguage?.name),
                            name: $0.name,
                            owner: .init(
                                id: $0.owner.id,
                                login: $0.owner.login,
                                avatarURL: $0.owner.asActor?.avatarUrl.url
                            ),
                            shortDescriptionHTML: $0.shortDescriptionHTML,
                            descriptionHTML: $0.descriptionHTML,
                            stargazerCount: $0.stargazerCount,
                            parent: $0.parent.map {
                                .init(
                                    id: $0.id,
                                    name: $0.name,
                                    owner: .init(id: $0.owner.id, login: $0.owner.login)
                                )
                            },
                            usesCustomOpenGraphImage: $0.usesCustomOpenGraphImage,
                            openGraphImageURL: URL(string: $0.openGraphImageUrl)!,
                            viewerHasStarred: $0.viewerHasStarred,
                            hasIssuesEnabled: $0.hasIssuesEnabled,
                            isDiscussionsEnabled: $0.isDiscussionsEnabled,
                            isArchived: $0.isArchived
                        )
                    }
                } ?? []
            )
        )
    }
}
