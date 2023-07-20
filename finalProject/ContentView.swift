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
                            HStack {
                                Capsule()
                                    .fill(Color.green)
                                    .frame(width: 300, height: 150)
                                    .ignoresSafeArea()
                                    .padding(.trailing, 300.0)
                                    .offset(x:0, y:-430)
                                Spacer()
                            }
                            HStack {
                                Text("Calendar")
                                    .foregroundColor(.white)
                                    .font(.largeTitle)
                                    .padding(.leading, 125.0)
                                    .offset(x:0, y:-430)
                    
                                Spacer()
                            }
                        }
                    }
                                                    
                            NavigationLink(destination: resourcesPage()) {
                                ZStack {
                                    Capsule()
                                        .fill(Color.purple)
                                        .frame(width: 100, height: 50)
                                        .ignoresSafeArea()
                                        .padding(.leading, 300.0)
                                        .offset(x:0, y:-330);                            Text("Resources")
                                        .foregroundColor(.black)
                                        .font(.headline)
                                        .foregroundColor(.black)
                                        .font(.largeTitle)
                                        .padding(.trailing, 125.0)
                                        .offset(x:0, y:-330)
                                    // I was having an issue setting up the reosurces button because I think the padding used makes it hard to place both buttons close to each other
                                    
                                }
                            }
                            
                            NavigationLink(destination: recipesPage()) {
                                ZStack {
                                    Capsule()
                                        .fill(Color.blue)
                                        .frame(width: 100, height: 50)
                                    Text("Recipes")
                                        .foregroundColor(.white)
                                        .font(.headline)
                                }
                            }
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

