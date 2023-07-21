//
//  allRecipes.swift
//  finalProject
//
//  Created by Noga Gercsak on 7/21/23.
//

import SwiftUI
struct allRecipes: View {
    var body: some View {
        VStack {
            Text("Here are links to great websites with recipes you can make using everyday ingredients and leftovers!")
            
            Link("65 Amazing Meals You Can Make From Leftovers Today - The Greatist", destination: URL(string:"https://shorturl.at/agvAP")!)
            
            Link("Everyday Leftover Recipes - All Recipes", destination: URL(string:"https://www.allrecipes.com/recipes/14503/everyday-cooking/everyday-leftovers/")!)
            
            Link("Leftover Recipes - BBC Good Food", destination: URL(string:"https://www.bbcgoodfood.com/recipes/collection/leftovers-recipes")!)
            
            Link("38 Recipes to Clean Out Your Fridge of leftovers", destination: URL(string:"https://www.delicious.com.au/recipes/collections/gallery/38-recipes-to-clean-out-your-fridge-of-leftovers/wy62h5cv")!)
        }
        
    }
}
struct allRecipes_Previews: PreviewProvider {
    static var previews: some View {
        allRecipes()
    }
}
