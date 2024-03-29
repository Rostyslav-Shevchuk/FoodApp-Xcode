//
//  MealScreenView.swift
//  FoodApp-Xcode
//
//  Created by Ростислав on 12.02.2024.
//

import SwiftUI

struct MealScreenItemView: View {
    
    var cards: card
    
    var body: some View {
        VStack {
            ScrollView {
            Image(cards.ImageMealScreen)
            
            HStack {
                Text(cards.title)
                    .font(.title)
                    .fontWeight(.medium)
                    .foregroundColor(Color(.text))
                
                Image(systemName: "circle.circle.fill")
                    .foregroundColor(Color(red: 0.24705882352941178, green: 0.788235294117647, blue: 0.4745098039215686))
                    .padding(.leading, 10)
                
                Spacer()
            }
            .padding(.leading, 50)
            .padding(.bottom, 5)
            
            Text(cards.price)
                .font(.system(size: 18, weight: .semibold, design: .default))
                .foregroundColor(Color(red: 0.24705882352941178, green: 0.788235294117647, blue: 0.4745098039215686))
                .padding(.leading, -145)
                .padding(.bottom, 15)
            
            VStack {
                Text("Recipe")
                    .foregroundColor(Color(.text))
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.leading, -145)
                
                Text(cards.description)
                    .font(.headline)
                    .fontWeight(.medium)
                    .foregroundColor(Color(.text))
                    .padding(.leading, 35)
            }
            .padding(.bottom, 10)
            
                VStack {
                    HStack {
                        Image("locationIcon")
                        
                        VStack{
                            Text("Location")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .foregroundColor(Color(.text))
                            
                            Text(cards.location)
                                .font(.caption)
                                .fontWeight(.medium)
                                .foregroundColor(Color(.text))
                                .padding(.leading, -40)
                        }
                    }
                    .padding(.leading, -145)
                    .padding(.bottom, 30)
                    
                    HStack {
                        Image("TimeIcon")
                        
                        VStack{
                            Text("Delivery Time")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .foregroundColor(Color(.text))
                            
                            Text(cards.DelivTime)
                                .font(.caption)
                                .fontWeight(.medium)
                                .foregroundColor(Color(.text))
                                .padding(.leading, -65)
                        }
                    }
                    .padding(.leading, -95)
                }
            }
            
            Spacer()
            
        }
    }
}

#Preview {
    MealScreenItemView(cards: card.samplecard)
}
