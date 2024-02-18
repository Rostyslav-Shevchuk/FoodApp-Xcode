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
                Spacer(minLength: 30)
                VStack {
                    VStack {
                        Text("Work Place")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.text)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 30)
                        
                        Text("Choose your delicious meal")
                            .font(.body)
                            .fontWeight(.medium)
                            .foregroundColor(.text)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 30)
                    }
                }
                
                
                    LazyVGrid (columns: [GridItem(.flexible(), spacing: -40), GridItem(.flexible(), spacing: -40)], spacing: 30){
                        ForEach(cardi, id: \.title) { card in
                        NavigationLink(destination: MealScreenItemView(cards: card)) {
                            CardItemView(cards: card)
                        }
                    }
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
