//
//  foodLogPage.swift
//  finalProject
//
//  Created by Noga Gercsak on 7/20/23.
//

import SwiftUI

struct foodLogPage: View {
    
    @State private var food = ""
    @State private var textTitle = "What is your food?"
    
    var body: some View {
        VStack {
            Text(textTitle)
                .font(.title)
            TextField("Type food here...", text: $food)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .border(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            Button("Submit food") {
                textTitle = "Welcome, \(food)!"           }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
        } .padding()
    }
}
    


struct foodLogPage_Previews: PreviewProvider {
    static var previews: some View {
        foodLogPage()
    }
}
