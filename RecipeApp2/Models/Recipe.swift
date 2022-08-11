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
    var ingredients: [String]
    var directions: [String]
    var servings: Int
    
    
}
