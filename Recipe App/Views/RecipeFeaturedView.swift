//
//  RecipeFeaturedView.swift
//  Recipe App
//
//  Created by Mohammed Mubashir on 28/12/22.
//

import SwiftUI

struct RecipeFeaturedView: View {
    
    @EnvironmentObject var model:RecipeModel
    
    var body: some View {
        
        VStack(alignment: .leading,spacing: 0){
            
            Text("Featured Recipes")
                .bold()
                .padding(.leading)
                .padding(.top,40)
                .font(.largeTitle)
            
            GeometryReader{
                geo in
                
                TabView{
                    ForEach(0..<model.recipes.count){
                        index in
                        
                        if model.recipes[index].featured==true{
                            
                            ZStack{
                                Rectangle()
                                    .foregroundColor(.white)
                                
                                
                                VStack(spacing: 0){
                                    Image(model.recipes[index].image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .clipped()
                                    
                                    Text(model.recipes[index].name).padding(5)
                                }
                            }.frame(width: geo.size.width-40,height: geo.size.height-100,alignment: .center)
                                .cornerRadius(15)
                                .shadow(color: Color(.sRGB,red: 0,green: 0,blue: 0,opacity: 0.5), radius: 10,x: -5,y:5)
                        }
                        
                    }
                    
                }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                    .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            }
            
            VStack(alignment: .leading,spacing: 10){
                Text("Preparation Time:")
                    .font(.headline)
                Text("1 hour")
                Text("Highlights")
                    .font(.headline)
                Text("Healthy, Hearty")
            }.padding([.leading,.bottom])
            
            
        }
    }
}

struct RecipeFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFeaturedView().environmentObject(RecipeModel())
    }
}
