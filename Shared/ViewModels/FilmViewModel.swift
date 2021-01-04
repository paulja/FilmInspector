//
//  FilmViewModel.swift
//  FilmInspector
//
//  Created by Paul Jackson on 31/12/2020.
//

import Foundation

/// View model for the `FilmListCellView` view, added when creating cell from the film list.
class FilmViewModel: Identifiable {
    private var film: Film

    /// Unique ID for the film item as a String.
    var id: String {
        film.id
    }

    /// Title for the film as a String.
    var title: String {
        film.title
    }

    /// The year the item was released, as a String, or "None" is not applicable.
    var year: String {
        film.year
    }

    /// Type of media; examples: "movie", "series", "game", or "None" if not applicable, as a String.
    /// Capitalised automatically for presentation.
    var type: String {
        film.type.capitalized
    }

    /// Poster URL string.
    var poster: String {
        film.poster
    }

    /// Constructs a new instance of the view model with a `Film` model instance.
    ///
    /// - Parameter film: `Film` model instance.
    init(film: Film) {
        self.film = film
    }

    /// Provides an example ViewModel for previews
    static var example: FilmViewModel {
        .init(film: .init(id: "1", title: "Example 1", year: "2020", type: "movie", poster: ""))
    }
}
