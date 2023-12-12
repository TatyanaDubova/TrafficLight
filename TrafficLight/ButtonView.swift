//
//  ButtonView.swift
//  TrafficLight
//
//  Created by Татьяна Дубова on 12.12.2023.
//

import SwiftUI

struct ButtonView: View {
    let titleButton: String
    let action: () -> ()
    
    var body: some View {
        Button(action: action) {
            Text(titleButton)
                .fontWeight(.bold)
                .font(.title)
                .foregroundColor(.white)
        }
        .padding()
        .frame(width: 160, height: 60)
        .background(.blue)
        .cornerRadius(20)
    }
}

#Preview {
    ZStack {
        Color.gray
        ButtonView(titleButton: "START", action: {})
    }
}
