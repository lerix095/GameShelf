//
//  CardGame.swift
//  P12M3L8
//
//  Created by Valeriy Protsenko on 18.01.2026.
//

import SwiftUI

struct CardGame: View {
    var item: MockDataCard
    
    var body: some View {
        Button {
            //
        } label: {
            HStack(alignment: .center, spacing: 12) {
                Image(item.image)
                    .resizable()
                    .frame(width: 80, height: 80)
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                
                VStack(alignment: .leading, spacing: 6) {
                    Text(item.title)
                        .font(.system(size: 16, weight: .medium))
                        .foregroundStyle(Color(hex: "FFFFFF"))
                        .lineLimit(1)
                        .multilineTextAlignment(.leading)
                    
                    Text(item.subTitle)
                        .font(.system(size: 14, weight: .regular))
                        .foregroundStyle(Color(hex: "A9A9AF"))
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                }
            }
            .padding(.horizontal, 20)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color(hex: "161621"))
        }
    }
}
