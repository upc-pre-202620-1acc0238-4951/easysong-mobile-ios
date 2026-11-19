//
//  SongApi.swift
//  EasySong
//
//  Created by Jorge Mayta on 19/11/26.
//
import Foundation

class SongApi {
    
    let baseUrl = "https://songapi-fcbahjbha7dabkan.eastus-01.azurewebsites.net/api/songs"
    
    func getSongs() async throws -> [SongDto] {
        
        guard let url = URL(string: baseUrl) else {
            throw NetworkError.invalidUrl
        }
        
        let session = URLSession.shared
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
        
        let (data, response) = try await session.data(for: urlRequest)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw NetworkError.invalidResponse
        }
        
        do {
            let songsDto = try JSONDecoder().decode(SongsDto.self, from: data)
            return songsDto.songs
        } catch {
            throw NetworkError.decodingError
        }
        
        
        
    }
}

enum NetworkError: Error {
    case invalidUrl
    case invalidResponse
    case decodingError
}
