//
//  SongCard.swift
//  EasySong
//
//  Created by Jorge Mayta on 19/11/26.
//

import SwiftUI

struct SongCard: View {
    let song: Song
    var body: some View {
        HStack (alignment: .top) {
            
            AsyncImage(url: URL(string: song.image)) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                case .success(let image):
                    image.resizable()
                case .failure(let error):
                    Image(systemName: "music.note")
                        .resizable()
                @unknown default:
                    EmptyView()
                }
            }
            .frame(width: 90,height: 90)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            
            VStack (alignment: .leading) {
                Text(song.title)
                    .font(.headline)
                Text(song.artist)
                    .font(.subheadline)
            }
            .padding(8)
            Spacer()
        }
    
        .background(.gray.opacity(0.1))
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}
