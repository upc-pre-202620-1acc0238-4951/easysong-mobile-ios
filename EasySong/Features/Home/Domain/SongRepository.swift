//
//  SongRepository.swift
//  EasySong
//
//  Created by Jorge Mayta on 19/11/26.
//

protocol SongRepository {
    func getSongs() async throws -> [Song]
}
