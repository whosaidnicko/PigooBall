//
//  BakButoncik.swift
//  PigooBall
//
//  Created by Nicolae Chivriga on 25/01/2025.
//

import SwiftUI

struct BakButoncik: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Button {
            dismiss()
        } label: {
            Image("redK")
                .resizable()
                .frame(width: 45, height: 34)
        }
    }
}
