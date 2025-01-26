//
//  PigIgrushvi.swift
//  PigooBall
//
//  Created by Nicolae Chivriga on 25/01/2025.
//


import SwiftUI

struct Piglgrushvi: View {
    @State var vzletSleva: Bool = false
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color.init(hex: "#F23C50"), Color.init(hex: "#DC1550")], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack {
                Image("logotipsik")
                    .offset(x: vzletSleva ? 0 : -UIScreen.main.bounds.width)
                    .onAppear() {
                        withAnimation(Animation.bouncy(duration: 1.5)) {
                            vzletSleva = true
                        }
                    }
                
                HStack {
                    LoadingDotsView()
                }
                
            }
            
            WKWebViewRepresentable(url: URL(string: "https://plays.org/game/piggy-bank/")!)
        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: BakButoncik())
    }
}
