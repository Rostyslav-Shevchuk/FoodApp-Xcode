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
            VStack {
                
                Spacer()
                
                HStack {
                    Image(systemName: "circle.circle.fill")
                        .foregroundColor(Color(red: 0.24705882352941178, green: 0.788235294117647, blue: 0.4745098039215686))
                    
                    Spacer()
                    
                    Image(systemName: "heart.fill")
                        .foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.0, opacity: 1.0))
                }
                .padding([.leading, .trailing])
                
                Spacer()
                
                Image(cards.Image)
                
                Spacer()
                
                Text(cards.title)
                    .font(.system(size: 12, weight: .semibold, design: .default))
                    .foregroundColor(Color(.text))
                    .foregroundColor(.text)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 10)
                
                
                HStack {
                    Text("$ 10.00")
                        .font(.system(size: 18, weight: .semibold, design: .default))
                        .foregroundColor(Color(red: 0.24705882352941178, green: 0.788235294117647, blue: 0.4745098039215686))
                        .foregroundColor(.text)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, -5)
                    
                    Spacer()
                    
                    Image(systemName: "plus.circle.fill")
                        .foregroundColor(Color(red: 0.24705882352941178, green: 0.788235294117647, blue: 0.4745098039215686))
                }
                .padding([.leading, .trailing])
                
                Spacer()
                
            }
        }
        .frame(width: 150, height: 225)
        .background(Color(.cardBack))
        .clipShape(RoundedRectangle(cornerRadius: 15.0, style: .continuous))
    }
}

#Preview {
    CardItemView(cards: card.samplecard)
}
