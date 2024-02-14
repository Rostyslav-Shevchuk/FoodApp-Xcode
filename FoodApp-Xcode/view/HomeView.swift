//
//  HomeView.swift
//  FoodApp-Xcode
//
//  Created by Ростислав on 12.02.2024.
//

import SwiftUI

struct HomeView: View {
    
    @State private var cardi: [card] = card.allcard
    
    @State private var columns = Array(repeating: GridItem(.flexible(), spacing: 0), count: 4)
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    HStack {
                        Menu {
                            Text("Menu Item 1")
                            Text("Menu Item 2")
                            Text("Menu Item 3")
                        } label: {
                            Image(systemName: "line.3.horizontal")
                        }
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("Work Place")
                        Text("choose your delicious meal")
                    }
                    
                    Spacer()
                }
                
                ForEach(cardi, id: \.title) { card in
                    LazyVGrid (columns: columns){
                        NavigationLink(destination: MealScreenItemView()) {
                            CardItemView(cards: card)
                        }
                    }
                    .padding(.leading, 50)
                }
            }
            .background(Color.gray.opacity(0.10))
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
