//
//  ContentView.swift
//  finalProject
//
//  Created by Prithika Venkatesh on 15/7/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 246/255, green: 240/255, blue: 214/255)
                    .ignoresSafeArea()
                VStack {
                    NavigationLink(destination: calenderPage()) {
                        ZStack {
                            Capsule()
                                .fill( Color(red: 172/255, green: 214/255, blue: 87/255))
                                .frame(width: 437.5, height: 187.5)
                            
                            Text("Calendar")
                                .foregroundColor(.black)
                                .font(.largeTitle)
                                .offset(x:80)
                            
                        }
                    }
                    .offset(x:-180, y:-15)
                    
                    
                    NavigationLink(destination: resourcesPage()) {
                        ZStack {
                            Capsule()
                                .fill(Color(red: 149/255, green: 214/255, blue: 255/255))
                                .frame(width: 437.5, height: 187.5)
                            
                            Text("Resources")
                                .foregroundColor(.black)
                                .font(.largeTitle)
                                .offset(x:-95, y:0)
                        }
                    }
                    .offset(x:190, y:-130)
                    
                    NavigationLink(destination: recipesPage()) {
                        ZStack {
                            Capsule()
                                .fill(Color(red: 230/255, green: 146/255, blue: 123/255))
                                .frame(width: 437.5, height: 187.5)
                            
                            Text("Recipes")
                                .foregroundColor(.black)
                                .font(.largeTitle)
                                .offset(x: 75 , y: 0)
                        }
                    }
                    .offset(x:-190, y:50)
                    
                   
                    NavigationLink(destination: ContentView()) {

                        Image("homePage")
                            .aspectRatio(contentMode: .fit)
                    }
                }
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
