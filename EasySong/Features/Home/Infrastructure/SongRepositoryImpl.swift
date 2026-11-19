//
//  SongRepositoryImpl.swift
//  EasySong
//
//  Created by Jorge Mayta on 19/11/26.
//

class SongRepositoryImpl: SongRepository {
    let api = SongApi()
    
    func getSongs() async throws -> [Song] {
        let dtos = try await api.getSongs()
        return dtos.map { dto in
            Song(id: dto.id, title: dto.title, artist: dto.artist, image: dto.image)
        }
        
    }
    
    
}
