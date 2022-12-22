//
//  RecipeDetaileView.swift
//  Recipe App
//
//  Created by Mohammed Mubashir on 14/12/22.
//

import SwiftUI

struct RecipeDetaileView: View {
    
    var recipe:Recipe
    
    var body: some View {
        ScrollView{
            
            
            VStack(alignment:.leading){
                
                // MARK: Recipe Image
                Image(recipe.image)
                    .resizable().scaledToFill()
                
                //MARK: Recipe Ingredients
                VStack(alignment: .leading){
                    Text("Ingredients")
                        .font(.headline)
                        .padding([.bottom,.top],5)
                    
                    ForEach (recipe.ingredients, id: \.self){ item in
                        
                        Text("• "+item)
                    }
                    
                }.padding([.leading,.trailing],10)
                
                
                //MARK: Divider
                Divider()
                
                //MARK: Recipe Directions
                
                VStack(alignment: .leading){
                    Text("Directions").font(.headline).padding([.bottom,.top],5)
                    
                    ForEach (0..<recipe.directions.count, id: \.self){ index in
                        
                        Text(String(index+1) + ". "+recipe.directions[index])
                            .padding(.bottom,5)
                        
                    }
                }.padding([.leading,.trailing],10)
            }
        }
        .navigationBarTitle(recipe.name)
    }
}

struct RecipeDetaileView_Previews: PreviewProvider {
    static var previews: some View {
        
        // create a dummy recipe and pass it into the detaile view so that we can see a preview
        
        let model = RecipeModel()
        
        RecipeDetaileView(recipe: model.recipes[0])
    }
}
