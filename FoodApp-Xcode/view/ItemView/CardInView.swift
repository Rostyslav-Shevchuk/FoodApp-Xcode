////
////  CardInView.swift
////  FoodApp-Xcode
////
////  Created by Ростислав on 13.02.2024.
////
//
//import SwiftUI
//
//struct CardInView: View {
//    
//    var tem: MeelScreenModel
//
//    // Використовуйте обчислювану властивість замість
//    var navigationLinkDestination: some View {
//        MealScreenItemView(tem: tem)
//    }
//    
//    var body: some View {
//        NavigationLink(destination: MealScreenItemView(tem: tem)) {
//            VStack {
//                HStack {
//                    ForEach(cardModel.card.prefix(cardModel.card.count / 2)) { item in
//                        CardView(item: item)
//                    }
//                }
//                HStack {
//                    ForEach(cardModel.card.suffix(cardModel.card.count / 2)) { item in
//                        CardView(item: item)
//                    }
//                }
//            }
//        }
//    }
//}
//
//struct CardInView_Previews: PreviewProvider {
//    static var previews: some View {
//        CardInView(tem: MeelScreenModel(title: "Vegan Salat", Image: "MealVegSalad", price: "$ 10.00", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", location: "Berlin", delivTime: "5 minutes"))
//    }
//}



