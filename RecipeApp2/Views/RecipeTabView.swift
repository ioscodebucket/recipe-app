//
//  RecipeTabView.swift
//  RecipeApp2
//
//  Created by Nadja Kelly on 11/08/2022.
//

import SwiftUI

struct RecipeTabView: View {
    
   
    var body: some View {
        
        TabView{
            
            RecipeFeaturedView()
                .tabItem {
                    VStack {
                        Image(systemName: "star.fill")
                        Text("Featured")
                        
                    }//:VStack
                    
                }//:tabItem
            
            ContentView()
                .tabItem{
                    VStack{
                        Image(systemName:"list.bullet")
                        Text("List")
                    }
                }
            
        }//:TabView
        .environmentObject(RecipeModel())
            
        
        
    }//:body View
    }//:struct


struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
