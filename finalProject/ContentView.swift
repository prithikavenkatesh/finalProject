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
                VStack {
                    Text("type short info abt app")
                    Spacer()
                    
                    
                    NavigationLink(destination: calenderPage()) {
                        ZStack {
                                Capsule()
                                    .fill(Color.green)
                                    .frame(width: 437.5, height: 187.5)

                                Text("Calendar")
                                    .foregroundColor(.black)
                                    .font(.largeTitle)
                                    .offset(x:80)
                                
                            }
                        }
                    .offset(x:-180, y:-105)
                    
                    
                            NavigationLink(destination: resourcesPage()) {
                                ZStack {
                                    Capsule()
                                        .fill(Color.purple)
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
                                        .fill(Color.blue)
                                        .frame(width: 437.5, height: 187.5)
                                                                       
                                    Text("Recipes")
                                        .foregroundColor(.black)
                                        .font(.largeTitle)
                                        .offset(x: 75 , y: 0)
                                }
                            }
                    .offset(x:-190, y:-160)
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

