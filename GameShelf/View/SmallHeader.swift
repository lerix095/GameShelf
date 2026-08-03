//
//  SmallHeader.swift
//  P12M3L8
//
//  Created by Valeriy Protsenko on 19.01.2026.
//

import SwiftUI

struct SmallHeader: View {
    var isVisible: Bool
    
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            Image(.user)
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
            
            Text("Lerix095")
                .font(.system(size: 20, weight: .semibold))
                .foregroundStyle(Color(hex: "FFF"))
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top, 48)
        .padding(.bottom, 10)
        
        .background(Color(hex: "161621").opacity(0.8))
        .glassEffect(.clear, in: .rect(cornerRadius: 0))
        .opacity(isVisible ? 1 : 0)
        .animation(.easeInOut, value: isVisible)
    }
}
