//
//  RecipeTabView.swift
//  Recipe App
//
//  Created by Mohammed Mubashir on 22/12/22.
//

import SwiftUI

struct RecipeTabView: View {
    
//    var listView = RecipeListView()
    
    var body: some View {
        
       
        TabView{
            
            Text("This is featured tab")
                .tabItem {
                    VStack{
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                }
            
            
            RecipeListView()
                .tabItem {
                VStack{
                    Image(systemName: "list.bullet")
                    Text("List")
                }
            }

        }
        
        
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
