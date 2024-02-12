//
//  HomeView.swift
//  FoodApp-Xcode
//
//  Created by Ростислав on 12.02.2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Menu() {
                        /*@START_MENU_TOKEN@*/Text("Menu Item 1")/*@END_MENU_TOKEN@*/
                        /*@START_MENU_TOKEN@*/Text("Menu Item 2")/*@END_MENU_TOKEN@*/
                        /*@START_MENU_TOKEN@*/Text("Menu Item 3")/*@END_MENU_TOKEN@*/
                    }label: {
                        Image(systemName: "line.3.horizontal")
                    }
                    
                }
                
                Spacer()
                
                VStack {
                    Text("Work Place")
                    Text("choose your delicious meal")
                }
                
                Spacer()
                
                ScrollView(.vertical, showsIndicators: false) {
                    NavigationLink {
                        
                    }label: {
                        
                    }
                }
                .frame(height: 480)
                
                Spacer()
            }
            .background(.gray.opacity(0.10))
        }
    }
}

#Preview {
    HomeView()
}
