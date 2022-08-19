//
//  ContentView.swift
//  RecipeApp2
//
//  Created by Nadja Kelly on 08/08/2022.
//

import SwiftUI

struct ContentView: View {
    // @ObservedObject var model = RecipeModel()
    
    @EnvironmentObject var model: RecipeModel
    
    var body: some View {
        
        
        
        
        NavigationView {
            
            
            VStack(alignment: .leading){
                //
                Text("All Recipes")
                    .bold()
                    //.padding(.leading)
                    .padding(.top, 40)
                    .font(.largeTitle)
                
                
                ScrollView{
                    LazyVStack(alignment: .leading){
                        ForEach(model.recipes) { recipiesItems in
                            
                            NavigationLink(
                                destination: RecipeDetailView(recipe: recipiesItems),
                                label: {
                                    
                                    //MARK: Row item
                                    HStack (spacing: 20 ){
                                        Image(recipiesItems.image)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 50, height: 50, alignment: .center)
                                            .clipped()
                                            .cornerRadius(5)
                                        
                                        Text(recipiesItems.name)
                                            .foregroundColor(.white)
                                        
                                        
                                        
                                        
                                        
                                        
                                    }//:HStack image
                                })
                            
                        }//: List
                    }//:LazyVStack
                }//:SrollView
            }//:VStack
            .padding(.leading)
            .navigationBarHidden(true)
            //.navigationBarTitle("All Recipes")
            
            
        }//:NavigationView
        
        
        
    }//HStack body
    
}//:struct

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(RecipeModel())
    }
}
