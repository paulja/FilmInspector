//
//  Films.swift
//  FilmInspector
//
//  Created by Paul Jackson on 31/12/2020.
//

import Foundation

/// Represents a model object for a search result.
struct Films: Decodable {
    /// Array of `Film` instances modelling the search results.
    var results: [Film]

    private enum CodingKeys: String, CodingKey {
        case results = "Search"
    }
}
