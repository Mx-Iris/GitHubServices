import Foundation
import SwiftCompilerPlugin
import SwiftSyntaxMacros

@main
struct GitHubServicesHelpersPlugin: CompilerPlugin {
    let providingMacros: [Macro.Type] = [
        AddAsyncMacro.self,
        AddAsyncAllMembersMacro.self,
        AddCompletionHandlerMacro.self,
    ]
}
