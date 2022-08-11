//
//  RecipeDetailView.swift
//  RecipeApp2
//
//  Created by Nadja Kelly on 09/08/2022.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe:Recipe
    
    
    var body: some View {
        
      
        
        ScrollView{
            
            VStack(alignment: .leading) {
                //MARK: Recipe Image
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                
                
                //MARK: Ingredients
                VStack(alignment: .leading) {
                    Text("Ingredients")
                        .font(.headline)
                        .padding([.bottom,.top], 5)
                    
                    ForEach(recipe.ingredients, id: \.self){ item in
                        Text("•" + item)
                            
                        
                    }//:ForEach
                }//:VStack
                .padding(.horizontal, 10)
                
                //MARK: Directions
                VStack(alignment: .leading) {
                    Text("Directions")
                        .font(.headline)
                        .padding([.bottom, .top],5)
                    
                    ForEach(0..<recipe.directions.count, id: \.self) { itemIndexed in
                        
                        Text(String(itemIndexed+1) + ". " + recipe.directions[itemIndexed])
                            .padding(.bottom, 5)
                    }//:ForEach
                    
                }//:VStack directions
                .padding(.horizontal, 10)
                
            }//:VStack main
            
            
            
        }//:ScrollView
        .navigationBarTitle(recipe.name)
        
        
    }//:body View

                
}//:struct View
            
            
struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        //create a dummy recipe and pass it into the detail iew so that we can see a preview
        let model = RecipeModel()
        
        
        RecipeDetailView(recipe: model.recipes[0])
    }
}
