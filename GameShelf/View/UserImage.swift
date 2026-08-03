//
//  UserImage.swift
//  P12M3L8
//
//  Created by Valeriy Protsenko on 18.01.2026.
//

import SwiftUI

struct UserImage: View {
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(.user)
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(maxWidth: .infinity)
            
            Text("Lerix095")
                .font(.system(size: 36, weight: .bold))
                .foregroundStyle(Color(hex: "FFF"))
                .lineLimit(1)
                .padding(.horizontal, 20)
                .padding(.bottom, 10)
        }
        .frame(maxWidth: .infinity)
    }
}

