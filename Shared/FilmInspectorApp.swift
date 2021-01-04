//
//  FilmInspectorApp.swift
//  FilmInspector
//
//  Created by Paul Jackson on 31/12/2020.
//

import SwiftUI

@main
/// App definition for the Film Inspector App.
struct FilmInspectorApp: App {
    /// Environmental root level View Model for the main view.
    @StateObject var filmListViewModel: FilmListViewModel

    /// Constructs the app including the root View Model as a `State` object.
    init() {
        let viewModel = FilmListViewModel()
        _filmListViewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some Scene {
        WindowGroup {
            FilmListView()
                .environmentObject(filmListViewModel)
        }
    }
}
