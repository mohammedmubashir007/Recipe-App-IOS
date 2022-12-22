//
//  ContentView.swift
//  Recipe App
//
//  Created by Mohammed Mubashir on 13/12/22.
//

import SwiftUI

struct RecipeListView: View {
    
    @ObservedObject var model = RecipeModel()
    
    
    var body: some View {
        
        
        
        NavigationView {
            
            List(model.recipes) {
                dish in
                
                NavigationLink {
                    RecipeDetaileView(recipe: dish)
                } label: {
                    
                    //MARK: Row item
                    
                    HStack(spacing:20.0) {
                        
                        Image(dish.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50,height: 50,alignment: .center)
                            .clipped()
                            .cornerRadius(5)
                        
                        Text(dish.name)
                    }
                }
            }
            .navigationBarTitle("All Recipes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}

