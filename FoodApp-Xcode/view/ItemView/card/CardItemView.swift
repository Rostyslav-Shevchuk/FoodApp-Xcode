//
//  CardItemView.swift
//  FoodApp-Xcode
//
//  Created by Ростислав on 11.02.2024.
//

import SwiftUI

struct CardItemView: View {
    
    var cards: card
    
    var body: some View {
        ZStack {
            HStack {
                Spacer()
                
                Image(cards.Image)
                
                Spacer()
                
                VStack {
                    Spacer()
                    
                    Image(systemName: "heart")
                        .foregroundColor(.red)
                    
                    Spacer(minLength: 80)
                    
                    Image(systemName: "circle.circle.fill")
                        .foregroundColor(Color(red: 0.24705882352941178, green: 0.788235294117647, blue: 0.4745098039215686))
                    
                    Spacer()
                }
                
                Spacer()
                
                VStack {
                    Text(cards.title)
                        .font(.callout)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.text))
                        
                    
                    Text(cards.price)
                        .font(.callout)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 0.24705882352941178, green: 0.788235294117647, blue: 0.4745098039215686))
                }
                
                Spacer()
            }
        }
        .frame(width: 280, height: 140)
        .background(Color(.cardBack))
        .clipShape(RoundedRectangle(cornerRadius: 15.0, style: .continuous))
    }
}

#Preview {
    CardItemView(cards: card.samplecard)
}
