//
//  Recipe.swift
//  RecipeApp2
//
//  Created by Nadja Kelly on 08/08/2022.
//

import Foundation


class Recipe: Identifiable, Decodable {
    
    var id : UUID?
    var name: String
    var featured: Bool
    var image: String
    var description: String
    var prepTime: String
    var cookTime: String
    var totalTime: String
    var ingredients: [Ingredients]
    var directions: [String]
    var servings: Int
    var highlights: [String]
    
    
}


//Identifiable lets it work in a swiftUI list and tell it apart
//  Decodable lets us decode the data
class Ingredients: Identifiable, Decodable{
    var id: UUID?
    var name: String
    var num: Int?
    var denom: Int?
    var unit: String?
    
    
}
