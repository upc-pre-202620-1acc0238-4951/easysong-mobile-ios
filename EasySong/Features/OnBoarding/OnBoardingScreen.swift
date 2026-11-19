//
//  OnBoardingScreen.swift
//  EasySong
//
//  Created by Jorge Mayta on 12/11/26.
//

import SwiftUI

struct OnBoardingScreen: View {
    @State private var showLogin = false
    
    var body: some View {
        
        NavigationStack {
            ZStack (alignment: .bottom){
                GeometryReader { geometry in
                    Image("background")
                        .resizable()
                        .scaledToFill()
                        .frame(width: geometry.size.width)
                      
                        .clipped()
                        .overlay {
                              LinearGradient(
                                  colors: [.clear, .black],
                                  startPoint: .top,
                                  endPoint: .bottom
                              )
                        }
                        .ignoresSafeArea()
                }
                VStack (spacing: 16){
                    
                    Text("Welcome to EasySong")
                        .font(.largeTitle).bold()
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                    
                    Text("Discover and save your favorite tunes.")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                    
                    Button {
                        showLogin.toggle()
                    } label: {
                        Text("Continue")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(.orange)
                            .foregroundStyle(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                            .padding(.horizontal)
                    }
                }
               
                
            }
            .tint(.orange)
            .navigationDestination(isPresented: $showLogin) {
                LoginScreen()
            }
        }
       
        
    }
}


#Preview {
    OnBoardingScreen()
}
