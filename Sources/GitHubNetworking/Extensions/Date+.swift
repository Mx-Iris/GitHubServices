//
//  File.swift
//  GitHubServices
//
//  Created by JH on 2025/3/14.
//

import Foundation

extension Date {
    
    private static let isoDateFormatter = ISO8601DateFormatter()
    
    
    package func toISO() -> String {
        Self.isoDateFormatter.string(from: self)
    }
}
