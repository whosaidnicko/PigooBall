//
//  PravilaIgri.swift
//  PigooBall
//
//  Created by Nicolae Chivriga on 25/01/2025.
//

import SwiftUI

struct PravilaIgri: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color.init(hex: "#F23C50"), Color.init(hex: "#DC1550")], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            Image("rul")
                .resizable()
                .scaledToFit()
                .padding()
        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: BakButoncik())
    }
}
