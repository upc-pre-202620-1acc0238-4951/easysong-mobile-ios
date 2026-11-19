//
//  MainScreen.swift
//  EasySong
//
//  Created by Jorge Mayta on 16/11/26.
//

import SwiftUI

struct MainScreen: View {
    var body: some View {
        TabView {
            Tab("Home", systemImage: "house") {
                HomeScreen()
            }
            
            Tab("Favorites", systemImage: "heart") {
                
            }
            
            Tab("Profile", systemImage: "person") {
                
            }
        }
        .navigationBarBackButtonHidden()
        .tint(.orange)
        .background(.black)
        .preferredColorScheme(.dark)
    }
}

#Preview {
    MainScreen()
}
