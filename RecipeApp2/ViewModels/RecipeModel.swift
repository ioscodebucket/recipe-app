//
//  RecipeModel.swift
//  RecipeApp2
//
//  Created by Nadja Kelly on 09/08/2022.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        //create an instance of data service and get the data
        
        self.recipes = DataService.getLocalData()
    }
    
  
    

}
