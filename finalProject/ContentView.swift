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
                    NavigationLink(destination: CalendarView()) {
                        ZStack {
                            Capsule()
                                .fill( Color(red: 172/255, green: 214/255, blue: 87/255))
                                .frame(width: 437.5, height: 187.5)
                            
                            Text("Calendar")
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .font(.largeTitle)
                                .offset(x:80)
                            
                        }
                    }
                    .offset(x:-180, y:30)
                    
                    
                    NavigationLink(destination: resourcesPage()) {
                        ZStack {
                            Capsule()
                                .fill(Color(red: 149/255, green: 214/255, blue: 255/255))
                                .frame(width: 437.5, height: 187.5)
                            
                            Text("Resources")
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .font(.largeTitle)
                                .offset(x:-95, y:0)
                        }
                    }
                    .offset(x:190, y:20)
                    
                    NavigationLink(destination: recipesPage()) {
                        ZStack {
                            Capsule()
                                .fill(Color(red: 230/255, green: 146/255, blue: 123/255))
                                .frame(width: 437.5, height: 187.5)
                            
                            Text("Recipes")
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .font(.largeTitle)
                                .offset(x: 75 , y: 0)
                        }
                    }
                    .offset(x:-190, y:0)
                    
                   
                    NavigationLink(destination: ContentView()) {

                        Image("homePage")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 90, height: 90)
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
