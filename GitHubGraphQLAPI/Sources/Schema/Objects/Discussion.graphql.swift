// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension Objects {
  /// A discussion in a repository.
  static let Discussion = ApolloAPI.Object(
    typename: "Discussion",
    implementedInterfaces: [
      Interfaces.Closable.self,
      Interfaces.Comment.self,
      Interfaces.Updatable.self,
      Interfaces.Deletable.self,
      Interfaces.Labelable.self,
      Interfaces.Lockable.self,
      Interfaces.RepositoryNode.self,
      Interfaces.Subscribable.self,
      Interfaces.OrgBlockable.self,
      Interfaces.Reactable.self,
      Interfaces.Votable.self,
      Interfaces.MentionSuggestable.self,
      Interfaces.MarkdownPreviewable.self,
      Interfaces.Node.self
    ]
  )
}