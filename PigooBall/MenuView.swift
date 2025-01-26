//
//  MenuView.swift
//  PigooBall
//
//  Created by Nicolae Chivriga on 25/01/2025.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color.init(hex: "#F23C50"), Color.init(hex: "#DC1550")], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack {
                Image("logotipsik")
                    .resizable()
                    .scaledToFit()
                
                HStack {
                    NavigationLink {
                        Piglgrushvi()
                    } label: {
                        Image("go")
                            .resizable()
                            .scaledToFit()
                    }

                  
                    
                    NavigationLink {
                        PravilaIgri()
                    } label: {
                        Image("ruliks")
                            .resizable()
                            .scaledToFit()
                    }

                  
                }
                
                NavigationLink {
                    SettingsViuha()
                } label: {
                    Image("set")
                        .resizable()
                        .scaledToFit()
                }

             
            }
            .padding()
        }
        .navigationBarBackButtonHidden()
    }
}
