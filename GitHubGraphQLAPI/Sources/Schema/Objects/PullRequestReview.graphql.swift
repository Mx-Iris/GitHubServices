// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension Objects {
  /// A review object for a given pull request.
  static let PullRequestReview = ApolloAPI.Object(
    typename: "PullRequestReview",
    implementedInterfaces: [
      Interfaces.Node.self,
      Interfaces.Comment.self,
      Interfaces.Deletable.self,
      Interfaces.Updatable.self,
      Interfaces.UpdatableComment.self,
      Interfaces.Reactable.self,
      Interfaces.OrgBlockable.self,
      Interfaces.RepositoryNode.self,
      Interfaces.Minimizable.self
    ]
  )
}