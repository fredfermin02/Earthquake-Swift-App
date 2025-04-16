//
//  CacheEntryObject.swift
//  Earthquakes
//
//  Created by Frederick Fermin on 4/16/25.
//

final class CacheEntryObject {
    let entry: CacheEntry
    init(entry: CacheEntry) { self.entry = entry }
}


enum CacheEntry {
    case inProgress(Task<QuakeLocation, Error>)
    case ready(QuakeLocation)
}
