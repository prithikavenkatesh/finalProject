//
//  FLButton.swift
//  finalProject
//
//  Created by Noga Gercsak on 7/21/23.
//

import SwiftUI

struct FLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
    }
}

struct FLButton_Previews: PreviewProvider {
    static var previews: some View {
        FLButton(title: "Value", background: .pink) {
            //Action
        }
    }
}
