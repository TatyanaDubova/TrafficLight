//
//  ContentView.swift
//  TrafficLight
//
//  Created by Татьяна Дубова on 12.12.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var titleButton = "START"
    @State private var opacityRed = 0.5
    @State private var opacityOrange = 0.5
    @State private var opacityGreen = 0.5
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack {
                CircleView(color: .red, width: 160, opacity: opacityRed)
                Spacer().frame(height: 15)
                CircleView(color: .orange, width: 160, opacity: opacityOrange)
                Spacer().frame(height: 15)
                CircleView(color: .green, width: 160, opacity: opacityGreen)
                Spacer()
                
                ButtonView(titleButton: titleButton, action: {
                    changeOpacity()
                    if titleButton == "START" {
                        titleButton = "NEXT"
                    }
                })
            }
            .padding()
        }
    }
    
    private func changeOpacity() {
            if opacityRed < 1 && opacityOrange < 1 && opacityGreen < 1 {
                opacityRed = 1
            } else if opacityRed == 1 {
                opacityRed = 0.5
                opacityOrange = 1
            } else if opacityOrange == 1 {
                opacityOrange = 0.5
                opacityGreen = 1
            } else if opacityGreen == 1 {
                opacityGreen = 0.5
                opacityRed = 1
            }
        }
}

#Preview {
    ContentView()
}
