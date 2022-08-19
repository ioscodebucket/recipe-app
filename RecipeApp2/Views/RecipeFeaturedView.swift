//
//  RecipeFeaturedView.swift
//  RecipeApp2
//
//  Created by Nadja Kelly on 15/08/2022.
//

import SwiftUI

struct RecipeFeaturedView: View {

    @EnvironmentObject  var model: RecipeModel

    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            
            Text("Featured Recipes")
                .bold()
                .font(.largeTitle)
                .padding(.top, 40)
            
                
                
            
            
            GeometryReader { geo in
                
            TabView {
                
                //loop thru each recipe
                ForEach (0..<model.recipes.count) { index in
                
                    //only show those that should be featured
                    if model.recipes[index].featured == true {
                    
                        
                        //recipe card
                        ZStack {
                            Rectangle()
                                .foregroundColor(.white)
                            
                            VStack(spacing: 0){
                                
                                Image(model.recipes[index].image)
                                    
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .clipped()
                                
                                Text(model.recipes[index].name)
                                    .foregroundColor(.green)
                                    .bold()
                                    .padding(5)
                                    
                            }//:VStack
                            
                            
                            
                        }//:ZStack
                        .frame(width: geo.size.width - 40, height: geo.size.height - 100, alignment: .center)
                        .cornerRadius(15)
                        .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity:0.5),  radius: 10, x: -5, y: 5)
                    
                            
                        
                    }//:if statement
                }//:ForEach
                
                
            }//:TabView
                //dots on bottom to swipe, choose .always .automatic(only if ther are more than one) .never
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                //make dots visible on all background colors
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                
            }//:GeometryReader
            
            VStack(alignment: .leading, spacing: 10){
                Text("PrepartionTime: ")
                    .font(.headline)
                Text("1 hour")
                Text("Highlights")
                    .font(.headline)
                Text("Healthy, Hearty")
            }//:VStack
            .padding([.leading, .bottom])
            
            
        }//:VStack
    }
}

struct RecipeFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFeaturedView()
            .environmentObject(RecipeModel())
    }
}
