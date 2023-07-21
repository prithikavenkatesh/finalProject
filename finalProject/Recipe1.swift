//
//  Recipe1.swift
//  finalProject
//
//  Created by Noga Gercsak on 7/21/23.
//
import SwiftUI
struct allRecipes: View {
  var body: some View {
    VStack {
      Text(“Here are links to great websites with recipes you can make using everyday ingredients and leftovers!“)
      Link(“65 Amazing Meals You Can Make From Leftovers Today - The Greatist”, destination: URL(string:“https://shorturl.at/agvAP”)!)
    }
  }
}
struct allRecipes_Previews: PreviewProvider {
  static var previews: some View {
    allRecipes()
  }
}
