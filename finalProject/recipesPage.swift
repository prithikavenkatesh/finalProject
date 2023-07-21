//
//  recipesPage.swift
//  finalProject
//
//  Created by Noga Gercsak on 7/19/23.
//

import SwiftUI
struct recipesPage: View {
  var body: some View {
    NavigationStack {
      ZStack {
        Color(red: 246/255, green: 240/255, blue: 214/255)
          .ignoresSafeArea()
          NavigationLink(destination: ContentView()) {
              ZStack {
                  VStack {
                      Capsule()
                          .frame(width: 350.0, height: 125.0)
                          .offset(x:0,y:-100)
                          .foregroundColor(Color(red: 230/255, green: 146/255, blue: 123/255))
                      Text("All Recipes")
                          .foregroundColor(Color.black)
                          .offset(x:0,y:-180)
                  }
              }
          }
                
                
                
                
                
          NavigationLink(destination: allRecipes()) {
              ZStack {
                  VStack {
                      Capsule()
                          .foregroundColor(Color(red: 230/255, green: 146/255, blue: 123/255))
                          .frame(width: 350.0, height: 125.0)
                          .offset(x:0,y:0)
                      Text("Vegetarian Recipes")
                          .foregroundColor(Color.black)
                          .offset(x:0, y:-80)
                  }
              }
          }
          NavigationLink(destination: ecoTips()) {
              ZStack {
                  VStack {
                      Capsule()
                          .foregroundColor(Color(red: 230/255, green: 146/255, blue: 123/255))
                          .frame(width: 350, height: 125)
                          .offset(x:0, y:100)
                      Text("Eco-friendly cooking tips")
                          .foregroundColor(Color.black)
                          .offset(x:0,y:20)
                  }
              }
          }


                      }
                    }
                  }
                }

struct recipesPage_Previews: PreviewProvider {
  static var previews: some View {
    recipesPage()
  }
}
