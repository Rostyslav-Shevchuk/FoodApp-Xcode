//
//  ContentView.swift
//  FoodApp-Xcode
//
//  Created by Ростислав on 11.02.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            TabView() {
                HomeView()
                    .tabItem {
                        Image("HomeTabView")
                    }
                
                HeartView()
                    .tabItem {
                        Image("HeartTabView")
                    }
                
                FilterView()
                    .tabItem {
                        Image("FilterTabView")
                    }
                
                BabyView()
                    .tabItem {
                        Image("BabyTabView")
                    }
                    
            }
            
        }
    }


#Preview {
    ContentView()
}
