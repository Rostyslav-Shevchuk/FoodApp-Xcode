//
//  cardModel.swift
//  FoodApp-Xcode
//
//  Created by Ростислав on 11.02.2024.
//

import Foundation


struct card: Codable {
    
    var title: String
    var Image: String
    var price: String
    var description: String
    var location: String
    var DelivTime: String
    var ImageMealScreen: String
    
    static let allcard: [card] = Bundle.main.decode(file: "Card.json")
    static let samplecard: card = allcard[0]
}

extension Bundle {
    func decode<T: Decodable>(file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Could not find \(file) in the project!")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError ("Could not load \(file) in the project!")
        }
        let decoder = JSONDecoder()
        guard let loadedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Could not decode| \(file) in the project!")
        }
        
        return loadedData
    }
}
