// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import CompilerPluginSupport

extension Target.Dependency {
    static let RxSwift = Target.Dependency.product(
        name: "RxSwift",
        package: "RxSwift"
    )
    static let RxCocoa = Target.Dependency.product(
        name: "RxCocoa",
        package: "RxSwift"
    )
    static let RxOptional = Target.Dependency.product(
        name: "RxOptional",
        package: "RxOptional"
    )
    static let RxMoya = Target.Dependency.product(
        name: "RxMoya",
        package: "Moya"
    )
    static let RxApolloClient = Target.Dependency.product(
        name: "RxApolloClient",
        package: "RxApolloClient"
    )
    static let MarkdownBuilder = Target.Dependency.product(
        name: "MarkdownBuilder",
        package: "SwiftMarkdownBuilder"
    )
    static let Git = Target.Dependency.product(
        name: "Git",
        package: "swift-git"
    )
    static let Alamofire = Target.Dependency.product(
        name: "Alamofire",
        package: "Alamofire"
    )
    static let Moya = Target.Dependency.product(
        name: "Moya",
        package: "Moya"
    )
    static let SwiftDate = Target.Dependency.product(
        name: "SwiftDate",
        package: "SwiftDate"
    )
    static let GitHubGraphQLAPI = Target.Dependency.product(
        name: "GitHubGraphQLAPI",
        package: "GitHubGraphQLAPI"
    )
    static let Apollo = Target.Dependency.product(
        name: "Apollo",
        package: "apollo-ios"
    )
    static let ApolloAPI = Target.Dependency.product(
        name: "ApolloAPI",
        package: "apollo-ios"
    )
    static let ArrayBuilderModule = Target.Dependency.product(
        name: "ArrayBuilderModule",
        package: "ArrayBuilder"
    )
    static let MetaCodable = Target.Dependency.product(
        name: "MetaCodable",
        package: "MetaCodable"
    )
    static let HelperCoders = Target.Dependency.product(
        name: "HelperCoders",
        package: "MetaCodable"
    )
    static let SwiftSyntax = Target.Dependency.product(
        name: "SwiftSyntax",
        package: "swift-syntax"
    )
    static let SwiftSyntaxMacros = Target.Dependency.product(
        name: "SwiftSyntaxMacros",
        package: "swift-syntax"
    )
    static let SwiftCompilerPlugin = Target.Dependency.product(
        name: "SwiftCompilerPlugin",
        package: "swift-syntax"
    )
    static let SwiftMacroToolkit = Target.Dependency.product(
        name: "MacroToolkit",
        package: "swift-macro-toolkit"
    )
    static let SwiftSyntaxMacrosTestSupport = Target.Dependency.product(
        name: "SwiftSyntaxMacrosTestSupport",
        package: "swift-syntax"
    )
}

extension Package.Dependency {
    static let SwiftSyntax = Package.Dependency.package(
        url: "https://github.com/swiftlang/swift-syntax.git",
        from: "509.0.0"
    )
    static let SwiftMacroToolkit = Package.Dependency.package(
        url: "https://github.com/MxIris-Library-Forks/swift-macro-toolkit",
        exact: "0.3.2"
    )
    static let Moya = Package.Dependency.package(
        url: "https://github.com/Moya/Moya",
        .upToNextMajor(from: "15.0.0")
    )
    static let Alamofire = Package.Dependency.package(
        url: "https://github.com/Alamofire/Alamofire.git",
        .upToNextMajor(from: "5.0.0")
    )
    static let RxSwift = Package.Dependency.package(
        url: "https://github.com/ReactiveX/RxSwift",
        .upToNextMajor(from: "6.0.0")
    )
    static let RxOptional = Package.Dependency.package(
        url: "https://github.com/RxSwiftCommunity/RxOptional",
        .upToNextMajor(from: "5.0.0")
    )
    static let SwiftDate = Package.Dependency.package(
        url: "https://github.com/malcommac/SwiftDate",
        .upToNextMajor(from: "7.0.0")
    )
    static let MetaCodable = Package.Dependency.package(
        url: "https://github.com/SwiftyLab/MetaCodable",
        exact: "1.3.0"
    )
    static let Apollo = Package.Dependency.package(
        url: "https://github.com/apollographql/apollo-ios.git",
        .upToNextMajor(from: "1.0.0")
    )
    static let GitHubGraphQLAPI = Package.Dependency.package(
        url: "https://github.com/Mx-Iris/GitHubGraphQLAPI",
        branch: "main"
    )
    static let RxApolloClient = Package.Dependency.package(
        url: "https://github.com/MxIris-Library-Forks/RxApolloClient",
        branch: "master"
    )
    static let ArrayBuilder = Package.Dependency.package(
        url: "https://github.com/WilhelmOks/ArrayBuilder",
        .upToNextMajor(from: "1.0.0")
    )
    static let SwiftMarkdownBuilder = Package.Dependency.package(
        url: "https://github.com/MxIris-Library-Forks/SwiftMarkdownBuilder",
        branch: "develop"
    )
    static let SwiftGit = Package.Dependency.package(
        url: "https://github.com/sharplet/swift-git",
        branch: "main"
    )
}

let package = Package(
    name: "GitHubServices",
    platforms: [.iOS(.v13), .macOS(.v10_15), .watchOS(.v6), .tvOS(.v13), .macCatalyst(.v13)],
    products: [
        .library(
            name: "GitHubModels",
            targets: ["GitHubModels"]
        ),
        .library(
            name: "GitHubNetworking",
            targets: ["GitHubNetworking"]
        ),
        .library(
            name: "RxGitHubNetworking",
            targets: ["RxGitHubNetworking"]
        ),
        .library(
            name: "GitHubServices",
            targets: ["GitHubServices"]
        ),
        .library(
            name: "RxGitHubServices",
            targets: ["RxGitHubServices"]
        ),
    ],
    dependencies: [
        .RxSwift,
        .RxOptional,
        .RxApolloClient,
        .Moya,
        .Apollo,
        .Alamofire,
        .MetaCodable,
        .GitHubGraphQLAPI,
        .ArrayBuilder,
        .SwiftGit,
        .SwiftDate,
        .SwiftMarkdownBuilder,
        .SwiftSyntax,
        .SwiftMacroToolkit,

    ],
    targets: [
        .target(
            name: "GitHubModels",
            dependencies: [
                "GitHubServicesHelpers",
                .MetaCodable,
                .HelperCoders,
            ],
            resources: [
                .process("Resources"),
            ]
        ),

        .target(
            name: "GitHubNetworking",
            dependencies: [
                "GitHubModels",
                "GitHubServicesHelpers",
                .Alamofire,
                .Moya,
                .SwiftDate,
                .GitHubGraphQLAPI,
                .Apollo,
                .ApolloAPI,
                .ArrayBuilderModule,
            ],
            resources: [
                .process("Resources"),
            ]
        ),

        .target(
            name: "RxGitHubNetworking",
            dependencies: [
                "GitHubModels",
                "GitHubNetworking",
                "GitHubServicesHelpers",
                .RxSwift,
                .RxCocoa,
                .RxOptional,
                .RxMoya,
                .RxApolloClient,
            ]
        ),

        .target(
            name: "GitHubServices",
            dependencies: [
                "GitHubModels",
                "GitHubNetworking",
                "GitHubServicesHelpers",
                .MarkdownBuilder,
                .Git,
            ]
        ),
        .target(
            name: "RxGitHubServices",
            dependencies: [
                "GitHubModels",
                "GitHubNetworking",
                "GitHubServices",
                "GitHubServicesHelpers",
                "RxGitHubNetworking",
                .RxSwift,
                .RxCocoa,
            ]
        )
        ,
        .target(
            name: "GitHubServicesHelpers",
            dependencies: [
                "GitHubServicesHelpersPlugin",
            ]
        ),
        .macro(
            name: "GitHubServicesHelpersPlugin",
            dependencies: [
                .SwiftSyntax,
                .SwiftSyntaxMacros,
                .SwiftCompilerPlugin,
                .SwiftMacroToolkit,
            ]
        ),
        .testTarget(
            name: "GitHubNetworkingTests",
            dependencies: [
                "GitHubNetworking",
            ]
        ),
        .testTarget(
            name: "RxGitHubNetworkingTests",
            dependencies: [
                "GitHubNetworking",
                "RxGitHubNetworking",
                .RxSwift,
                .RxCocoa,
            ]
        ),
        .testTarget(
            name: "GitHubServicesTests",
            dependencies: [
                "GitHubModels",
                "GitHubNetworking",
                "GitHubServices",
                "GitHubServicesHelpers",
                "GitHubServicesHelpersPlugin",
            ]
        ),
        .testTarget(
            name: "RxGitHubServicesTests",
            dependencies: [
                "RxGitHubServices",
                .RxSwift,
                .RxCocoa,
            ]
        ),
        .testTarget(
            name: "GitHubServicesHelpersTests",
            dependencies: [
                "GitHubServicesHelpers",
                "GitHubServicesHelpersPlugin",
                .SwiftMacroToolkit,
                .SwiftSyntax,
                .SwiftSyntaxMacros,
                .SwiftSyntaxMacrosTestSupport,
            ]
        ),
    ]
)
