//
//  GitHubNetworkingTests.swift
//  
//
//  Created by JH on 2024/1/30.
//

import Testing
@testable import GitHubNetworking

struct PaginationLinkHeaderTests {
    @Test
    func parsesNextAndLastPageNumbers() {
        let header = PaginationLinkHeader(
            headerValue: "<https://api.github.com/user/starred?page=2&per_page=100>; rel=\"next\", <https://api.github.com/user/starred?page=23&per_page=100>; rel=\"last\""
        )

        #expect(header.nextPageNumber == 2)
        #expect(header.lastPageNumber == 23)
    }

    @Test
    func returnsNoPageNumbersWithoutPaginationLinks() {
        let header = PaginationLinkHeader(headerValue: nil)

        #expect(header.nextPageNumber == nil)
        #expect(header.lastPageNumber == nil)
    }
}
