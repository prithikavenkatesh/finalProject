//
//  calenderPage.swift
//  finalProject
//
//  Created by Noga Gercsak on 7/19/23.
//

import SwiftUI



struct CalendarView: View {
    
    @FetchRequest(
      entity: ExpirationDate.entity(), sortDescriptors: [ NSSortDescriptor(keyPath: \ExpirationDate.id, ascending: false) ])
        
    var foodItems: FetchedResults<ExpirationDate>
    
    @StateObject var viewModel = FoodListViewViewModel()
                      
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Text("Calendar")
                        .font(.system(size: 60))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding(.bottom)
                    
                    Spacer()
                    
                    VStack {
                        
                        Text("Upcoming expirations")
                            .font(.largeTitle)
                        ZStack {
                              
                            List{
                                Text("Bannas: Monday")
                                Text("Milk: Wednesday")
                                Text("Apples: Saturday")
                            }
                            Spacer()
                            
                            Image("Calendar")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 225.0, height: 225.0)
                            
                            
                            Button("add food +") {
                                //Action
                                viewModel.showingNewItemView = true
                            }
                            .foregroundColor(.black)
                            .font(.system(size: 45))
                            .buttonStyle(.borderedProminent)
                            .bold()
                            .padding(.top, 350.0)
                            }
                        
                    }
                    
                    
                    }
                Image("homePage")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 90, height: 90)
                    .offset(x:0, y:350)
            }
                .sheet(isPresented: $viewModel.showingNewItemView) {
                    NewItemView(title: "",
                        newItemPresented: $viewModel.showingNewItemView)
                    
                }
            }
        }
    }
    
    
    
    
    struct calenderPage_Previews: PreviewProvider {
        static var previews: some View {
            CalendarView()
        }
    }

