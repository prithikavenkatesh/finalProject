//
//  foodLogPage.swift
//  finalProject
//
//  Created by Noga Gercsak on 7/20/23.
//

import SwiftUI

struct foodLogPage: View {
    
    @State var title: String
    
    var body: some View {
        VStack {
            TextField("Enter your food expiration...", text: $title)
            
            Button(action: {
              
            }) {
                Text("Add")
            }
            
        }
    }
    
    
    
    struct foodLogPage_Previews: PreviewProvider {
        static var previews: some View {
            foodLogPage(title: "")
        }
    }
}
