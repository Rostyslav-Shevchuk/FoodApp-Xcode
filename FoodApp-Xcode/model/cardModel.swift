//
//  cardModel.swift
//  FoodApp-Xcode
//
//  Created by Ростислав on 11.02.2024.
//

import Foundation

struct cardModel: Identifiable {
    
    let id = UUID().uuidString
    
    let title: String
    let Image: String
    let price: String
    
    static let card = [
        cardModel(title: "Vegan Salat", Image: "VeganSalat", price: "$ 10.00"),
        cardModel(title: "Vegan Salat", Image: "VeganSalat", price: "$ 10.00"),
        cardModel(title: "Vegan Salat", Image: "VeganSalat", price: "$ 10.00"),
        cardModel(title: "Vegan Salat", Image: "VeganSalat", price: "$ 10.00")
    ]
}
