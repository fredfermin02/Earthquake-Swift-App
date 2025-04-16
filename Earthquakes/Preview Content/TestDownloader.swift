//
//  TestDownloader.swift
//  Earthquakes
//
//  Created by Frederick Fermin on 4/16/25.
//

import Foundation


final class TestDownloader: HTTPDataDownloader {
    func httpData(from url: URL) async throws -> Data {
        try await Task.sleep(for: .milliseconds(.random(in: 100...500)))
        return testQuakesData
    }
}
