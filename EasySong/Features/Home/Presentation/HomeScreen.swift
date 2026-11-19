//
//  HomeScreen.swift
//  EasySong
//
//  Created by Jorge Mayta on 19/11/26.
//

import SwiftUI

struct HomeScreen: View {
    @State private var viewModel = HomeViewModel()
    var body: some View {
        VStack {
            List {
                ForEach(viewModel.songs) { song in
                    SongCard(song: song)
                }
                .listRowSeparator(.hidden)
                .listRowBackground(Color.clear)
                .listRowInsets(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                
            }
            
            .listStyle(.plain)
            .scrollContentBackground(.hidden)
            .task {
                await viewModel.loadSongs()
            }
            
            
        }
        .background(.black)
        .preferredColorScheme(.dark)
    }
}

#Preview {
    HomeScreen()
}
