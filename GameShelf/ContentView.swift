//
//  ContentView.swift
//  P12M3L8
//
//  Created by Valeriy Protsenko on 18.01.2026.
//

import SwiftUI

struct ContentView: View {
    var mockDataCard = MockDataCard.getMockData()
    
    @State private var headerVisible = false
    
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: 20) {
                    
                    GeometryReader { proxy in
                        let minY = proxy.frame(in: .global).minY
                        let height: CGFloat = 300
                        
                        Color.clear
                            .onChange(of: minY) {
                                headerVisible = minY < -180
                            }
                        
                        UserImage()
                            .frame(width: proxy.size.width)
                            .frame(height: minY > 0 ? height + minY : height)
                            .offset(y: minY > 0 ? -minY : 0)
                    }
                    .frame(height: 300)
                    
                    Title()
                    
                    VStack(alignment: .leading, spacing: 16) {
                        ForEach(mockDataCard) { item in
                            CardGame(item: item)
                        }
                    }
                }
            }
        }
        .background(Color(hex: "161621"))
        .ignoresSafeArea(edges: .top)
        
        .overlay(
            SmallHeader(isVisible: headerVisible)
                .ignoresSafeArea(edges: .top), alignment: .top)
    }
}

#Preview {
    ContentView()
}
