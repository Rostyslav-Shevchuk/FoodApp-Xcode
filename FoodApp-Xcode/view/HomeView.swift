//
//  HomeView.swift
//  FoodApp-Xcode
//
//  Created by Ростислав on 12.02.2024.
//

import SwiftUI

struct HomeView: View {
    
    @State private var cardi: [card] = card.allcard
    
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
                    LazyVGrid (columns: [GridItem(.flexible(), spacing: 4), GridItem(.flexible(), spacing: 4)], spacing: 4){
                        NavigationLink(destination: MealScreenItemView(cards: card)) {
                            CardItemView(cards: card)
                        }
                    }
                }
                .padding(.leading, 130)
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
