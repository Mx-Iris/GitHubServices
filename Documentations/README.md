# GitHubServices 文档索引

GitHub API 的 Swift 客户端库。**新增或重命名任何文档都必须同步更新这份索引。**

> **项目类型：库（源码分发）**。SPM library product，使用方每次重新编译，
> 无 ABI 约束，但**源码兼容性必须评估** —— 已知下游包括 StarLight。
> 第一篇提案由 `/evolution <描述>` 创建时会自动建立 `Evolutions/` 目录与提案索引。

## 实现说明

- [GitHubModels Sendable 迁移说明](GitHubModelsSendableMigration.md) ——
  模型实例要在网络请求、异步服务与 actor 隔离域之间传递。统一给模型层加上 `Sendable` 契约，
  免得每个调用方各自写 retroactive conformance，或在严格并发检查下重复处理不安全的兼容代码。
