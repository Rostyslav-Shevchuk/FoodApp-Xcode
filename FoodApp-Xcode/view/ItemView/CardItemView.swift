//
//  CardItemView.swift
//  FoodApp-Xcode
//
//  Created by Ростислав on 11.02.2024.
//

import SwiftUI

struct CardView: View {
    
    var item: cardModel
    
    var body: some View {
        ZStack {
            VStack {
                
                Spacer()
                
                HStack {
                    Image(systemName: "circle.circle.fill")
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.24705882352941178, green: 0.788235294117647, blue: 0.4745098039215686)/*@END_MENU_TOKEN@*/)
                    
                    Spacer()
                    
                    Image(systemName: "heart.fill")
                        .foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.0, opacity: 1.0))
                }
                .padding([.leading, .trailing])
                
                Spacer()
                
                Image(item.Image)
                
                Spacer()
                
                Text(item.title)
                    .font(.system(size: 12, weight: .semibold, design: .default))
                    .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.0))
                    .padding(.leading, -55)
                
                
                HStack {
                    Text("$ 10.00")
                        .font(.system(size: 18, weight: .semibold, design: .default))
                        .foregroundColor(Color(red: 0.24705882352941178, green: 0.788235294117647, blue: 0.4745098039215686))
                    
                    Spacer()
                    
                    Image(systemName: "plus.circle.fill")
                        .foregroundColor(Color(red: 0.24705882352941178, green: 0.788235294117647, blue: 0.4745098039215686))
                }
                .padding([.leading, .trailing])
                
                Spacer()
                
            }
        }
        .frame(width: 148, height: 226)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 15.0, style: .continuous))
    }
}

#Preview {
    CardView(item: cardModel(title: "Vegan Salat", Image: "VeganSalat", price: "$ 10.00"))
}
