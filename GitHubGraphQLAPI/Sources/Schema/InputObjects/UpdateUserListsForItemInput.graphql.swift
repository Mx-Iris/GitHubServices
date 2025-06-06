// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

/// Autogenerated input type of UpdateUserListsForItem
public struct UpdateUserListsForItemInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    itemId: ID,
    listIds: [ID],
    suggestedListIds: GraphQLNullable<[ID]> = nil,
    clientMutationId: GraphQLNullable<String> = nil
  ) {
    __data = InputDict([
      "itemId": itemId,
      "listIds": listIds,
      "suggestedListIds": suggestedListIds,
      "clientMutationId": clientMutationId
    ])
  }

  /// The item to add to the list
  public var itemId: ID {
    get { __data["itemId"] }
    set { __data["itemId"] = newValue }
  }

  /// The lists to which this item should belong
  public var listIds: [ID] {
    get { __data["listIds"] }
    set { __data["listIds"] = newValue }
  }

  /// The suggested lists to create and add this item to
  public var suggestedListIds: GraphQLNullable<[ID]> {
    get { __data["suggestedListIds"] }
    set { __data["suggestedListIds"] = newValue }
  }

  /// A unique identifier for the client performing the mutation.
  public var clientMutationId: GraphQLNullable<String> {
    get { __data["clientMutationId"] }
    set { __data["clientMutationId"] = newValue }
  }
}
