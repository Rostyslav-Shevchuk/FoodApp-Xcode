//
//  ContentView.swift
//  FoodApp-Xcode
//
//  Created by Ростислав on 11.02.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                }
                .tag(0)
            
            settingsView()
                .tabItem {
                    Image(systemName: "gearshape.fill")
                }
                .tag(3)
        }
        .tint(Color(red: 0.24705882352941178, green: 0.788235294117647, blue: 0.4745098039215686))
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
