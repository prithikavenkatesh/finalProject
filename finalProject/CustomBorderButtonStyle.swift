//
//  CustomBorderButtonStyle.swift
//  finalProject
//
//  Created by Noga Gercsak on 7/21/23.
//

import Foundation

struct CustomBorderButtonStyle: ButtonStyle {
    let borderColor: Color
    let borderWidth: CGFloat

    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding()
            .foregroundColor(.black)
            .font(.largeTitle)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(borderColor, lineWidth: borderWidth)
            )
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0) // Optional: Add a slight scaling effect when pressed
    }
}
