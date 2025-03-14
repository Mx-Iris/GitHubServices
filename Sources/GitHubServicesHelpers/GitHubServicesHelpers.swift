@attached(peer, names: overloaded)
public macro AddAsync() =
    #externalMacro(module: "GitHubServicesHelpersPlugin", type: "AddAsyncMacro")

@attached(member, names: arbitrary)
public macro AddAsyncAllMembers() =
    #externalMacro(module: "GitHubServicesHelpersPlugin", type: "AddAsyncAllMembersMacro")

@attached(peer, names: overloaded)
public macro AddCompletionHandler() =
    #externalMacro(module: "GitHubServicesHelpersPlugin", type: "AddCompletionHandlerMacro")
