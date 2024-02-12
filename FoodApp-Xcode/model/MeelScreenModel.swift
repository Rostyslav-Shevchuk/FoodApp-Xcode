//
//  MeelScreenModel.swift
//  FoodApp-Xcode
//
//  Created by Ростислав on 12.02.2024.
//

import Foundation

struct MeelScreenModel: Identifiable {
    
    let id = UUID().uuidString
    
    let title: String
    let Image: String
    let price: String
    let description: String
    let location: String
    let delivTime: String
    
    static let MealScreen = [
        MeelScreenModel(title: "Vegan Salat", Image: "MealVegSalad", price: "$ 10.00", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", location: "Berlin", delivTime: "5 minutes"),
        MeelScreenModel(title: "VVVVVVV", Image: "MealVegSalad", price: "$ 10.00", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", location: "Berlin", delivTime: "5 minutes"),
        MeelScreenModel(title: "HHHHH", Image: "MealVegSalad", price: "$ 10.00", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", location: "Berlin", delivTime: "5 minutes"),
        MeelScreenModel(title: "Vegan Salat", Image: "MealVegSalad", price: "$ 10.00", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", location: "Berlin", delivTime: "5 minutes")
    ]
}
