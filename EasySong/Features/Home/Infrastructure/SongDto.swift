//
//  SongDto.swift
//  EasySong
//
//  Created by Jorge Mayta on 19/11/26.
//

struct SongDto: Decodable {
    let id: Int
    let title: String
    let artist: String
    let image: String
}

struct SongsDto: Decodable {
    let count: Int
    let songs: [SongDto]
    
    enum CodingKeys: String, CodingKey {
        case count
        case songs = "results"
    }
}
