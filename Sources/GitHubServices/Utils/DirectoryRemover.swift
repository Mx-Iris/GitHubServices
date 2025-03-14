//
//  DirectoryRemover.swift
//  Mist
//
//  Created by Nindi Gill on 21/6/2022.
//

import Foundation

/// Helper struct to remove directories
enum DirectoryRemover {
    /// Remove directory at the provided URL.
    ///
    /// - Parameters:
    ///   - url: The URL of the directory to remove.
    ///
    /// - Throws: An `Error` if the command failed to execute.
    static func remove(_ url: URL) async throws {
        guard FileManager.default.fileExists(atPath: url.path) else {
            return
        }
        try FileManager.default.removeItem(at: url)
    }
}
