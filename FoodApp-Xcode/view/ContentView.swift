//
//  ContentView.swift
//  FoodApp-Xcode
//
//  Created by Ростислав on 11.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var columns = [
        GridItem(.flexible(), spacing: 0),
        GridItem(.flexible(), spacing: 0)
    ]
    
    var body: some View {
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
            
            VStack {
                Text("Work Place")
                Text("choose your delicious meal")
            }
            
            HStack {
                Button {
                    
                }label: {
                    Image("")
                }
                
                Button {
                    
                }label: {
                    Image("")
                }
                
                Button {
                    
                }label: {
                    Image("")
                }
                
                Button {
                    
                }label: {
                    Image("")
                }
            }
            
            Spacer()
            
            ScrollView(.vertical, showsIndicators: false) {
                LazyVGrid (columns: columns, spacing: 30) {
                    ForEach(cardModel.card) { item in
                        CardView(item: item)
                    }
                }
            }
            .frame(height: 480)
            
            Spacer()
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
