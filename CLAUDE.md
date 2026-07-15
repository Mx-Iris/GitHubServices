# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

`GitHubServices` is a Swift Package (swift-tools 5.10, multi-platform: iOS 13+, macOS 10.15+, watchOS 6+, tvOS 13+, macCatalyst 13+) that wraps the GitHub REST and GraphQL APIs plus higher-level repository operations (backup, export, workflow management). Note: `README.md` still calls it "GitHubKit" — the real package/module name is `GitHubServices`.

## Build / Test

```bash
swift package update        # always run first to avoid stale checkouts (several deps track branches)
swift build 2>&1 | xcsift
swift test 2>&1 | xcsift

# Single test target / single test
swift test --filter GitHubServicesHelpersTests 2>&1 | xcsift
swift test --filter GitHubServicesHelpersTests/<TestCaseName>/<testMethod> 2>&1 | xcsift
```

Most `Tests/*` files are empty XCTest stubs; the real, runnable tests live in `GitHubServicesHelpersTests` (macro-expansion assertions via `SwiftSyntaxMacrosTestSupport`). Network code is exercised offline through Moya's stubbing provider + JSON fixtures (see "Stubbing & fixtures").

## Layered Architecture (5 library products)

Dependencies flow strictly downward; never introduce an upward dependency.

```
GitHubModels                  Codable model types (MetaCodable-annotated)
   ↑
GitHubNetworking              REST (Moya) + GraphQL (Apollo) — GitHubClient
   ↑                ↑
GitHubServices   RxGitHubNetworking   high-level services / RxSwift wrapper
   ↑                ↑
RxGitHubServices                      Rx wrapper over services
```

- **GitHubModels** — Plain Codable types. Uses **MetaCodable** macros instead of hand-written `CodingKeys`: `@Codable`, `@CodedAt("snake_case_key")`, `@CodedBy(ISO8601DateCoder())` for dates, `@Default(...)` for fallbacks, `@Inherits(decodable:encodable:)` on classes. When adding a model field, annotate the JSON mapping with these macros rather than writing a `CodingKeys` enum. 所有模型及其嵌套类型必须使用编译器可检查的 `Sendable` conformance；不要使用 `@unchecked Sendable` 绕过存储属性检查，并在新增类型时同步更新 `GitHubModelsSendableTests` 的编译期清单。
- **GitHubNetworking** — The core. `GitHubClient: GitHubAPI` is the concrete implementation, where `GitHubAPI = RestAPI & GraphQLAPI`. Talks to three backends, each with its own Moya `TargetType` enum + `Provider`:
  - GitHub REST (`api.github.com`) → `GitHubTarget` / `GitHubProvider`
  - Trending (`gtrend.yapie.me`) → `TrendingGitHubTarget` / `TrendingGitHubProvider`
  - Codetabs (`api.codetabs.com`) → `CodetabsTarget` / `CodetabsProvider`
  - GraphQL (`api.github.com/graphql`) → Apollo `ApolloClient` (`client` for public token, `privateClient` for `privateToken`).
  All providers wrap a generic `OnlineProvider<Target>`, which centralizes success-status filtering and maps 404 → `APIError.resourceNotFound`, other failures → `APIError.serverError`. Endpoint base URLs live in `Misc/Configs.swift`.
  - The authenticated `/user/starred` endpoint returns `PaginatedResponse<Repository>` with parsed `Link` page numbers, `ETag`, and `304 Not Modified` state. Its large response pages are decoded on a dedicated background queue; do not change the callback queue behavior of legacy request helpers when extending this path.
- **RxGitHubNetworking** — `RxGitHubClient: RxGitHubAPI`, RxSwift/RxMoya/RxApolloClient mirror of the client.
- **GitHubServices** — Workflows on top of the client: `BackupService`, `ExportService` (`RepositoriesJSONExporter` / `RepositoriesMarkdownExporter`), `WorkflowService`. Uses **swift-git** (`Git`) for cloning and **MarkdownBuilder** for Markdown generation. Services depend on the `GitHubAPI` protocol, not the concrete client.
- **RxGitHubServices** — Rx wrappers (`Cloner+Rx`, `RepositoriesExporter+Rx`).

## Async generation via macros — the central convention

`GitHubServicesHelpers` (macro declarations) + `GitHubServicesHelpersPlugin` (`.macro` compiler plugin, built on swift-syntax + MacroToolkit) generate `async/await` APIs from completion-handler code. **The entire public API is authored once as completion-handler functions; the `async throws` overloads are generated — do not hand-write them.**

- `@AddAsyncAllMembers` — member macro placed on an `extension`/`protocol`; generates an async variant for *every* member. Used on `RestAPI`, `GraphQLAPI`, every `GitHubClient` extension, and `RepositoriesExporter`.
- `@AddAsync` — peer macro for a single function.
- The macro only fires on a func that is **non-`async`, returns `Void`, and takes a completion handler as its last parameter**. A `(Result<T, Error>) -> Void` handler becomes `async throws -> T`; a `(T) -> Void` handler becomes `async -> T`. Violating these constraints fails macro expansion.

### Adding a new REST endpoint (touch all three, in order)

1. Add a `case` to the relevant `*Target` enum (`GitHubTarget` etc.) and implement its `TargetType` requirements.
2. Add the completion-handler signature to the protocol (`RestAPI` / `GraphQLAPI`) — it sits under `@AddAsyncAllMembers`.
3. Implement it in `GitHubClient` (also under `@AddAsyncAllMembers`), routing through one of the private `requestObject` / `requestArray` / `requestWithoutObject` / `requestAllObject` helpers.

The `async` versions appear automatically. `requestAllObject` is the pagination helper: it recurses page-by-page until an empty page (used by the `all…Repositories` methods).

## Stubbing & fixtures

- Each provider exposes a `stubbingProvider()` (Moya `immediatelyStub`) for offline tests; `RxGitHubClient.testAPI` is preconfigured this way.
- JSON fixtures live in `Sources/GitHubNetworking/Resources/Stubbed Responses/` and `Sources/GitHubModels/Resources/`.
- Models conforming to `Testable` (`static var resourceName`) get `.testModel`, which decodes the bundled fixture — handy for tests and previews.

## GraphQL code generation (external, tooling lives in gitignored folders)

GraphQL types are **not** generated into this package. They come from the separate **`GitHubGraphQLAPI`** package (remote dep `github.com/Mx-Iris/GitHubGraphQLAPI`, branch `main`; a local checkout sits in `GitHubGraphQLAPI/`). To change a query/fragment:

1. Edit `.graphql` operations under `GitHubGraphQLGenerate/input/` (schema is `schema.graphqls`).
2. Regenerate with the bundled CLI: `cd GitHubGraphQLGenerate && ./apollo-ios-cli generate` (config: `apollo-codegen-config.json`, output path `../GitHubGraphQLAPI`).
3. Commit/push the regenerated `GitHubGraphQLAPI` package separately, then bump this package's dependency.

`/API`, `/Model`, and `/GitHubGraphQLGenerate` are **gitignored local tooling/scratch** (`.paw` API docs, GraphQL codegen toolchain) and are not part of the package build.

## Dependency notes

Several dependencies track branches/forks rather than tags, so a stale `Package.resolved` is the usual cause of build failures — run `swift package update`. Branch-tracked deps: `GitHubGraphQLAPI` (main), `RxApolloClient` (MxIris fork, master), `SwiftMarkdownBuilder` (MxIris fork, develop), `swift-git` (main). Apollo is pinned `exact: 1.8.0`.
