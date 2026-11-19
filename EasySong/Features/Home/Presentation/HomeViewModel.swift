//
//  HomeViewModel.swift
//  EasySong
//
//  Created by Jorge Mayta on 19/11/26.
//

import Observation

@Observable
class HomeViewModel {
    private(set) var songs: [Song] = []
    private var repository: SongRepository = SongRepositoryImpl()
    
    func loadSongs() async {
        do {
            songs = try await repository.getSongs()
        } catch {
            
        }
        
    }
    
}
