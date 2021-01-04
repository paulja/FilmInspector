//
//  FilmListCellView.swift
//  FilmInspector
//
//  Created by Paul Jackson on 31/12/2020.
//

import SwiftUI

/// View for presenting a single row in the films list.
struct FilmListCellView: View {
    let viewModel: FilmViewModel

    var body: some View {
        HStack(alignment: .top) {
            Rectangle()
                .foregroundColor(Color.black.opacity(0.3))
                .frame(width: 70, height: 100)
                .overlay(FilmPosterView(posterURL: viewModel.poster))
                .clipShape(RoundedRectangle(cornerRadius: 8))

            VStack(alignment: .leading) {
                Text(viewModel.title)
                    .font(.title2)
                Text(viewModel.year)
                    .font(.body)
                    .foregroundColor(.secondary)

                Spacer()

                Text(viewModel.type)
                    .font(.body)
                    .foregroundColor(.secondary)
                    .padding(.bottom, 4)
            }
            .padding(.top, 4)
        }
        .padding([.top, .bottom], 6)
    }
}

struct FilmCellView_Previews: PreviewProvider {
    static var previews: some View {
        List {
            FilmListCellView(viewModel: FilmViewModel.example)
        }
        .listStyle(PlainListStyle())
    }
}
