//
//  SettingsViuha.swift
//  PigooBall
//
//  Created by Nicolae Chivriga on 26/01/2025.
//

import SwiftUI
import StoreKit

struct SettingsViuha: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color.init(hex: "#F23C50"), Color.init(hex: "#DC1550")], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
          Image("setP")
                .resizable()
                .scaledToFit()
                .padding()
            
            VStack {
                Button {
                    if let window = UIApplication.shared.windows.first {
                        requestReview(in: window)
                    }                } label: {
                    ZStack {
                        Image("ogipuse")
                        
                        Text("Rate Pigoo")
                            .font(.system(size: 15, weight: .bold, design: .serif))
                            .foregroundStyle(.white)
                    }

                }

                
                Button {
                    if let url = URL(string: "mailto:sametsancak1@icloud.com") {
                        if UIApplication.shared.canOpenURL(url) {
                            UIApplication.shared.open(url)
                        }
                    }
                } label: {
                    ZStack {
                        Image("ogipuse")
                        
                        Text("Contact Us")
                            .font(.system(size: 15, weight: .bold, design: .serif))
                            .foregroundStyle(.white)
                    }
                }

             
                
            }
                .padding()
                .padding(.top, 100)
            
        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: BakButoncik())
        
    }
    func requestReview(in window: UIWindow?) {
        if let windowScene = window?.windowScene {
            SKStoreReviewController.requestReview(in: windowScene)
        } else {
            print("Failed to find a valid UIWindowScene.")
        }
    }
}
