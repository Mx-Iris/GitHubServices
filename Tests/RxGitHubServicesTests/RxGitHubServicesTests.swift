////
////  RxGitHubServicesTests.swift
////
////
////  Created by JH on 2024/1/30.
////
//
//import XCTest
//import RxSwift
//import RxCocoa
//@testable import GitHubModels
//@testable import GitHubServices
//@testable import GitHubNetworking
//@testable import RxGitHubNetworking
//@testable import RxGitHubServices
//
//final class RxGitHubServicesTests: XCTestCase {
//    lazy var tokenString = "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"
//
//    lazy var token = Token(accessToken: tokenString)
//
//    lazy var client = RxGitHubClient(token: token, privateToken: nil)
//
//    let disposeBag = DisposeBag()
//
//    func testFetchAllRepositories() {
//        func fetchAllRepositories(numberOfPerPage: Int) -> Observable<[Repository]> {
//            return Observable.create { observer in
//                var allRepositories = [Repository]()
//                var currentPage = 1
//
//                func fetchNextPage() {
//                    self.client.organizationRepositories(organization: "MxIris-macOS-Library-Forks", type: .owner, sort: nil, direction: nil, numberOfPerPage: numberOfPerPage, page: currentPage).asObservable()
//                        .subscribe(
//                            onNext: { repositories in
//                                if repositories.isEmpty {
//                                    // 如果返回的仓库列表为空，则认为已经到达最后一页
//                                    observer.onNext(allRepositories)
//                                    observer.onCompleted()
//                                } else {
//                                    // 如果返回的仓库列表不为空，则将获取到的仓库添加到所有仓库的数组中
//                                    allRepositories.append(contentsOf: repositories)
//                                    currentPage += 1
//                                    fetchNextPage() // 递归调用以获取下一页
//                                }
//                            },
//                            onError: { error in
//                                observer.onError(error)
//                            }
//                        )
//                        .disposed(by: self.disposeBag)
//                }
//
//                fetchNextPage() // 开始从第一页获取数据
//                return Disposables.create()
//            }
//        }
//        let expectation = expectation(description: "Finished")
//
//        fetchAllRepositories(numberOfPerPage: 80)
//            .subscribe(
//                onNext: { [weak self] repos in
//                    guard let self else { return }
//                    print("Fetch \(repos.count) Repositories")
//                    print("---------------------------------------")
//                    repos.print(keyPath: \.fullname)
//                    exportRepositories(repos) { result in
//                        switch result {
//                        case .success:
//                            print("export success")
//                        case let .failure(failure):
//                            switch failure {
//                            case let .commonError(error):
//                                print("export failure: \(error)")
//                            }
//                        }
//                        expectation.fulfill()
//                    }
//                },
//                onError: { error in
//                    error.assertAndPrint()
//                    expectation.fulfill()
//                },
//                onCompleted: {}
//            )
//            .disposed(by: disposeBag)
//
//        wait(for: [expectation])
//    }
//
//    func exportRepositories(_ repos: [Repository], completion: @escaping (_ result: Result<Void, RepositoriesExportError>) -> Void) {
//        RepositoriesMarkdownExporter.shared.start(repositories: repos, destinationURL: URL(fileURLWithPath: "/Users/JH/Desktop").appendingPathComponent("repos.md"), options: .init(username: "MxIris-macOS-Library-Forks", repositoryType: "Starred"), completion: completion)
//    }
//
//    func testAllStarredRepos() {
//        let expectation = expectation(description: "Finished")
//        client.allUserStarredRepositories(username: "Mx-Iris", sort: nil, direction: nil).asObservable()
//            .subscribe { [weak self] repos in
//                guard let self else { return }
//                print("Fetch \(repos.count) Repositories")
//                print("---------------------------------------")
//                repos.print(keyPath: \.fullname)
//
//                exportRepositories(repos) { result in
//                    switch result {
//                    case .success:
//                        print("export success")
//                        expectation.fulfill()
//                    case let .failure(failure):
//                        switch failure {
//                        case let .commonError(error):
//                            print("export failure: \(error)")
//                            XCTAssert(false, "\(error)")
//                            expectation.fulfill()
//                        }
//                    }
//                }
//            } onError: { error in
//                XCTAssert(false, "\(error)")
//                expectation.fulfill()
//            } onCompleted: {
//                print("completion")
//            }
//            .disposed(by: disposeBag)
//        wait(for: [expectation])
//    }
//
//    func testFetchRepos() {
//        let expectation = expectation(description: "Finished")
//        client.userRepositories(username: "Mx-Iris", type: nil, sort: nil, page: 0, numberOfPerPage: 30).asObservable()
//            .flatMap {
//                Observable.zip($0.map { self.client.repository(fullname: $0.fullname, qualifiedName: "").asObservable() })
//            }
//            .subscribe { repos in
//                print(repos)
//            } onError: { error in
//                XCTAssert(false, "\(error)")
//                expectation.fulfill()
//            } onCompleted: {
//                print("completion")
//                expectation.fulfill()
//            }
//            .disposed(by: disposeBag)
//        wait(for: [expectation])
//    }
//
//    func testOrganizationRepositories() {
//        let expectation = expectation(description: "Finished")
//        client.organizationRepositories(organization: "MxIris-Library-Forks", type: .owner, sort: nil, direction: nil, numberOfPerPage: 30, page: 0).asObservable()
////            .flatMap {
////                Observable.zip($0.map { self.restAPI.repository(fullname: $0.fullname ?? "", qualifiedName: "").asObservable() })
////            }
//            .subscribe { repos in
//                repos.forEach { print($0.fullname) }
//            } onError: { error in
//                XCTAssert(false, "\(error)")
//                expectation.fulfill()
//            } onCompleted: {
//                print("completion")
//                expectation.fulfill()
//            }
//            .disposed(by: disposeBag)
//        wait(for: [expectation])
//    }
//}
//
//extension Array {
//    func print(keyPath: KeyPath<Element, some Any>) {
//        forEach { element in
//            Swift.print(element[keyPath: keyPath])
//        }
//    }
//}
//
//extension Error {
//    func assertAndPrint() {
//        XCTAssert(false, "\(self)")
//    }
//}
