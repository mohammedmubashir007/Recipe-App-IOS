//
//  RecipeModel.swift
//  Recipe App
//
//  Created by Mohammed Mubashir on 13/12/22.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    
    init (){
        
        // create an instance of data service and get the data
       
        self.recipes = DataService.getLocalData()
    
        
        
    }
    
}
