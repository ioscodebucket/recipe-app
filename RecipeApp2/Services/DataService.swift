//
//  DataService.swift
//  RecipeApp2
//
//  Created by Nadja Kelly on 09/08/2022.
//

import Foundation

class DataService{
    
    static func getLocalData() -> [Recipe] {
        
        //Parse local json file
        
        
        //Get a url path to the json file
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        //check if pathString is ot nil, otherwise...
        guard pathString != nil else {
            return [Recipe]()
        }
        //create a url object
        let url = URL(fileURLWithPath: pathString!)

        do {
        //create a data object
        let data = try Data(contentsOf: url)
         
        //decode the data with a json decoder
        let decoder = JSONDecoder()
        
            
        do {
            let recipeData = try decoder.decode([Recipe].self, from: data)
            //add the unique IDs
            for r in recipeData {
                r.id = UUID()
                
                //add unique IDs to recipe ingredients
                for ingredient in r.ingredients {
                    ingredient.id = UUID()
                }
            }
            //return the recipes **ideally 
            return recipeData
                
        }
            
        catch{
            //error with parsing json
              print(error)
        }
       
        

        
        }
        catch{
            //error with getting data
            print(error)
        
        
    }
        
    
            return[Recipe]()
    }
}
