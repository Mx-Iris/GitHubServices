# GitHubModels Sendable 迁移说明

## 动机

`GitHubModels` 的实例会在网络请求、异步服务与 actor 隔离域之间传递。模型层缺少统一的 `Sendable` 契约时，调用方需要自行添加 retroactive conformance，或者在 Swift 严格并发检查下处理重复且不安全的兼容代码。

## 变更范围

- 所有显式声明的模型、枚举、协议和嵌套类型均遵守 `Sendable`。
- `Payload` 协议继承 `Sendable`，因此所有事件 payload 通过协议获得受检查的 conformance。
- `Repository` 保持 `final` 且所有存储属性不可变，因此使用编译器可检查的引用类型 conformance。
- `Event` 不再共享 `ISO8601DateFormatter` 实例；编码和解码各自创建局部 formatter，避免共享可变引用状态。
- `GitHubModelsSendableTests` 维护完整的编译期类型清单，确保现有模型满足 `Sendable` 泛型约束。

## 设计取舍

本次迁移没有使用 `@unchecked Sendable`。这样，模型新增非 `Sendable` 存储属性时会由编译器暴露问题，而不是把线程安全责任转移给调用方。

事件模型仍保留现有的编码格式和 payload 解码策略。日期 formatter 改为局部实例只影响内部实现，不改变 JSON 表示。

## 兼容性与迁移

这些 conformance 是源代码兼容的公开 API 增量。依赖方如果曾为 `GitHubModels` 类型添加 retroactive `Sendable` 或 `@unchecked Sendable` conformance，应删除对应扩展，改用模型模块提供的原生 conformance。

新增模型或嵌套类型时，应同时满足以下要求：

1. 在类型声明所在文件中添加受检查的 `Sendable` conformance。
2. 确认全部存储属性本身可发送；引用类型必须具有可证明的不可变性或隔离策略。
3. 将类型加入 `GitHubModelsSendableTests` 的编译期清单。
