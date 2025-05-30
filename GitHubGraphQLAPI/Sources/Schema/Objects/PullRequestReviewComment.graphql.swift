// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension Objects {
  /// A review comment associated with a given repository pull request.
  static let PullRequestReviewComment = ApolloAPI.Object(
    typename: "PullRequestReviewComment",
    implementedInterfaces: [
      Interfaces.Node.self,
      Interfaces.OrgBlockable.self,
      Interfaces.Comment.self,
      Interfaces.Deletable.self,
      Interfaces.Minimizable.self,
      Interfaces.Updatable.self,
      Interfaces.UpdatableComment.self,
      Interfaces.Reactable.self,
      Interfaces.RepositoryNode.self
    ]
  )
}