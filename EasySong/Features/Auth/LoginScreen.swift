//
//  LoginScreen.swift
//  EasySong
//
//  Created by Jorge Mayta on 12/11/26.
//

import SwiftUI

struct LoginScreen: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isPasswordHidden = true
    
    @State private var showMain = false
    
    
    var body: some View {
        NavigationStack {
            VStack (spacing: 16){
                TextField("Email", text: $email)
                    .frame(height: 24)
                    .padding()
                    .background(.gray.opacity(0.1))
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .padding(.horizontal)
                HStack {
                    Group {
                        if (isPasswordHidden) {
                            SecureField("Password", text: $password)
                        } else {
                            TextField("Password", text: $password)
                        }
                    }
                    Button {
                        isPasswordHidden.toggle()
                    } label: {
                        Image(systemName: isPasswordHidden ? "eye.slash" : "eye")
                    }
                    
                }
                .frame(height: 24)
                .padding()
                .background(.gray.opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .padding(.horizontal)
                
                Button {
                    showMain.toggle()
                } label: {
                    Text("Sign in")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.orange)
                        .foregroundStyle(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                        .padding(.horizontal)
                }
                
                
            }
            .navigationDestination(isPresented: $showMain, destination: {
                MainScreen()
            })
            .navigationBarBackButtonHidden()
            .tint(.orange)
        }
        
    }
}

#Preview {
    LoginScreen()
}

