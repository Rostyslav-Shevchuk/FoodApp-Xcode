//
//  MealScreenView.swift
//  FoodApp-Xcode
//
//  Created by Ростислав on 12.02.2024.
//

import SwiftUI

struct MealScreenItemView: View {
    
    var tem: MeelScreenModel
    
    var body: some View {
        VStack {
            HStack {
                Text(tem.title)
                
                Image(systemName: "circle.circle.fill")
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.24705882352941178, green: 0.788235294117647, blue: 0.4745098039215686)/*@END_MENU_TOKEN@*/)
                    .padding(.leading, 10)
                Spacer()
            }
            .padding(.leading, 50)
            
            Text(tem.price)
            
            VStack {
                Text("Recipe")
                
                Text(tem.description)
            }
            
            VStack {
                HStack {
                    Image("locationIcon")
                    
                    VStack{
                        Text("Location")
                        
                        Text(tem.location)
                    }
                }
                
                HStack {
                    Image("TimeIcon")
                    
                    VStack{
                        Text("Delivery Time")
                        
                        Text(tem.delivTime)
                    }
                }
            }
        }
    }
}

#Preview {
    MealScreenItemView(tem: MeelScreenModel(title: "Vegan Salat", Image: "VeganSalat", price: "$ 10.00", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", location: "Berlin", delivTime: "5 minutes"))
}
