//
//  Title.swift
//  P12M3L8
//
//  Created by Valeriy Protsenko on 18.01.2026.
//

import SwiftUI

struct Title: View {
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            Image(.rating)
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundStyle(Color(hex: "FF5821"))
            
            Text("Favorite Games")
                .font(.system(size: 24, weight: .semibold))
                .foregroundStyle(Color(hex: "FFF"))
                .lineLimit(1)
        }
        .padding(.horizontal, 20)
        .padding(.top, 8)
    }
}

