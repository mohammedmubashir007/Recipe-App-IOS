//
//  DataService.swift
//  Recipe App
//
//  Created by Mohammed Mubashir on 13/12/22.
//

import Foundation


class DataService {
    
    // this function returns the array that contains recipes after decoding
   static func getLocalData()-> [Recipe] {
        
        // parsing the json file
        
        // Getting the url path to json file
        
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        // Getting the url object
        
        if let path = pathString{
            let url = URL(fileURLWithPath: path)
            
            
            // getting a data object
            do{
                
                let data = try Data(contentsOf: url)
                // Decode the data with json decoder
                
                let decoder = JSONDecoder()
                
                do{
                    
                    let recipeData = try decoder.decode([Recipe].self, from: data)
                    // add the unique ids
                    
                    for dish in recipeData{
                        dish.id = UUID()
                    }
                    // Return  the recipe
                    
                    return recipeData
                    
                }catch{
                    print("error in decoding")
                }
                
            }
            catch{
                print("error in creating data object")
            }
        }
        
        return [Recipe]()
        
    }
}
