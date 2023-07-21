//
//  calenderPage.swift
//  finalProject
//
//  Created by Noga Gercsak on 7/19/23.
//

import SwiftUI



struct CalendarView: View {
    
    @StateObject var viewModel = FoodListViewViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 246/255, green: 240/255, blue: 214/255)
                    .ignoresSafeArea()
                VStack {
                    Text("Calendar")
                        .font(.system(size: 60))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding(.bottom)
                    
                    ZStack {
                        Color(red: 235/255, green: 225/255, blue: 185/255)
                            .ignoresSafeArea()
                        Text("Upcoming expirations")
                            .font(.largeTitle)
                            .offset(x:0, y:-280)
                        
                        Button("Button") {
                            //Action
                            viewModel.showingNewItemView = true
                        }
                    }
                }
                .sheet(isPresented: $viewModel.showingNewItemView) {
                    NewItemView(newItemPresented: $viewModel.showingNewItemView)
                    
                }
            }
        }
    }
    
    
    
    
    struct calenderPage_Previews: PreviewProvider {
        static var previews: some View {
            CalendarView()
        }
    }
}
