//
//  QuakesProvider.swift
//  Earthquakes
//
//  Created by Frederick Fermin on 4/16/25.
//

import Foundation
import Observation

@Observable
class QuakesProvider {

    var quakes: [Quake] = []

    let client: QuakeClient

    func fetchQuakes() async throws {
        let latestQuakes = try await client.quakes
        self.quakes = latestQuakes
    }

    func deleteQuakes(atOffsets offsets: IndexSet) {
        quakes.remove(atOffsets: offsets)
    }

    init(client: QuakeClient = QuakeClient()) {
        self.client = client
    }
}
