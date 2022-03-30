//
//  Meal.swift
//  MVCExampleApp
//
//  Created by Gregory Odintsov on 29.03.2022.
//

struct Meal {
    let name: String
    let description: String
    let image: String
    let rating: Int
    let price: String
    
    var ratingBar: String {
        String(repeating: "⭐️", count: rating)
    }
}

extension Meal {
    static func getMeal() -> Meal {
        Meal(name: "Суп Фасолевый",
             description: "Очень вкусный суп, бери - не пожалеешь!",
             image: "swiftimage",
             rating: 7,
             price: "130.00 рублей / 250 гр."
        )
    }
}
