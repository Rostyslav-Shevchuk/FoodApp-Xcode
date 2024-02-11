//
//  SplashScreenView.swift
//  FoodApp-Xcode
//
//  Created by Ростислав on 11.02.2024.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack {
                VStack {
                    Image("foodIcon")
                    Text("Food Ordering App")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .dynamicTypeSize(.xxxLarge)
                }
            }
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear {
                withAnimation(.easeIn(duration: 1.2)) {
                    self.size = 0.9
                    self.opacity = 1.0
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                    self.isActive = true
                }
            }
            
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.green)
        }
    }
}
