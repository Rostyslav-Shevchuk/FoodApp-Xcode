//
//  MealScreenView.swift
//  FoodApp-Xcode
//
//  Created by Ростислав on 12.02.2024.
//

import SwiftUI

struct MealScreenItemView: View {
    var body: some View {
        VStack {
            Image("Vegan Salad")
                .ignoresSafeArea()
            
            Spacer()
            
            HStack {
                Text("das")
                    .font(.title)
                    .fontWeight(.medium)
                    .foregroundColor(.black.opacity(0.7))
                
                Image(systemName: "circle.circle.fill")
                    .foregroundColor(Color(red: 0.24705882352941178, green: 0.788235294117647, blue: 0.4745098039215686))
                    .padding(.leading, 10)
                Spacer()
            }
            .padding(.leading, 50)
            .padding(.bottom, 5)
            
            Text("dsaf")
                .font(.system(size: 18, weight: .semibold, design: .default))
                .foregroundColor(Color(red: 0.24705882352941178, green: 0.788235294117647, blue: 0.4745098039215686))
                .padding(.leading, -145)
                .padding(.bottom, 15)
            
            VStack {
                Text("Recipe")
                    .foregroundColor(.black.opacity(0.7))
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.leading, -145)
                
                Text("adfs")
                    .font(.headline)
                    .fontWeight(.medium)
                    .foregroundColor(.black.opacity(0.55))
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
                            .foregroundColor(.black.opacity(0.7))
                        
                        Text("adfdsa")
                            .font(.caption)
                            .fontWeight(.medium)
                            .foregroundColor(.black.opacity(0.55))
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
                            .foregroundColor(.black.opacity(0.7))
                        
                        Text("adfsdfs")
                            .font(.caption)
                            .fontWeight(.medium)
                            .foregroundColor(.black.opacity(0.55))
                    }
                }
                .padding(.leading, -95)
            }
            
            Spacer()
            
        }
    }
}

#Preview {
    MealScreenItemView()
}
