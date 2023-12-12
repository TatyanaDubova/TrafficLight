//
//  CircleView.swift
//  TrafficLight
//
//  Created by Татьяна Дубова on 12.12.2023.
//

import SwiftUI

struct CircleView: View {
    let color: Color
    let width: CGFloat
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundStyle(color)
            .frame(width: width)
            .opacity(opacity)
            .overlay(
                Circle()
                    .stroke(Color.white, lineWidth: 4)
            )
    }
}

#Preview {
    ZStack {
        Color.gray
        CircleView(color: .black, width: 160, opacity: 0.5)
    }
}
