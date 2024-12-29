import XCTest
import Foundation
import SwiftSyntaxMacros
import GitHubServicesHelpers
import GitHubServicesHelpersPlugin
import SwiftSyntaxMacrosTestSupport

let testMacros: [String: Macro.Type] = [
    "AddAsyncInterface": AddAsyncMacro.self,
]

protocol Test {
    @AddAsync
    func d(a: Int, for b: String, _ value: Double, completion: @escaping (Bool) -> Void)
}

final class GitHubServicesHelpersTests: XCTestCase {
    func testAddAsyncInterfaceMacro() {
        assertMacroExpansion(
            """
            @Before
            @AddAsync
            @After
            func d(a: Int, for b: String, _ value: Double, completion: @escaping (Bool) -> Void)
            """,
            expandedSource:
            """
            @Before
            @After
            func d(a: Int, for b: String, _ value: Double, completion: @escaping (Bool) -> Void)

            @Before
            @After
            func d(a: Int, for b: String, _ value: Double)  async -> Bool
            """,
            macros: testMacros
        )
    }
}
