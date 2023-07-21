//
//  QRCode.swift
//  finalProject
//
//  Created by Noga Gercsak on 7/20/23.
//

import SwiftUI
struct QRCode: View {
  var body: some View {
      NavigationStack {
          ZStack {
            Color(red: 246/255, green: 240/255, blue: 214/255)
              .ignoresSafeArea()
            Rectangle()
              .frame(width: 400.0, height: 350.0)
              .offset(x:0, y:-90)
              .foregroundColor(Color(red: 172/255, green: 214/255, blue: 87/255))
            Image("Eco.Eats")
              .resizable(resizingMode: .stretch)
              .aspectRatio(contentMode: .fit)
              .frame(width: 300.0, height: 300.0)
              .offset(x:0,y:-90)
            Text("QR Code")
              .font(.largeTitle)
              .fontWeight(.bold)
              .offset(x:0,y:-330)
              .font(.system(size:100))
            Text("This QR Code will bring you to a linktree which\n has links to websites and sources that will help decrease food waste.")
              .font(.headline)
              .multilineTextAlignment(.center)
              .offset(x:0,y:150)
            NavigationLink(destination: ContentView()) {
              Image("homePage")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 90, height: 90)
                .offset(x:0,y:350)
            }
          }
      }
  }
  struct QRCode_Previews: PreviewProvider {
    static var previews: some View {
      QRCode()
    }
  }
}





