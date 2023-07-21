//
//  OrganizationsForResourves.swift
//  finalProject
//
//  Created by Noga Gercsak on 7/20/23.
//

import SwiftUI
struct OrganizationsForResourves: View {
    var body: some View {
        ZStack {
            Color(red: 246/255, green: 240/255, blue: 214/255)
                .ignoresSafeArea()
            Group {
            Text("Organizations that support food conservation:")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 172/255, green: 214/255, blue: 87/255) )
                .multilineTextAlignment(.center)
                .offset(x:0,y:-320)
                .lineLimit(3)
                .lineSpacing(1)
            Circle()
                .frame(width: 25.0, height: 25.0)
                .offset(x:-150,y:-250)
                .foregroundColor(Color(red: 172/255, green: 214/255, blue: 87/255) )
            Text("The World Food Program located in the \nUSA fights world hunger and supports \nfood conservation. ")
                .multilineTextAlignment(.leading)
                .lineLimit(/*@START_MENU_TOKEN@*/4/*@END_MENU_TOKEN@*/)
                .offset(x:30, y:-230)
            
            Circle()
                .offset(x:-150, y:-100)
                .frame(width: 25.0, height: 25.0)
                .foregroundColor(Color(red: 172/255, green: 214/255, blue: 87/255))
            Text("The Food Recovery Network is a student\n let effort to reduce the amount of food\n being wasted by redistributing that\n food to people who need it.")
                .offset(x:30, y:-80)
            Circle()
                .frame(width: 25.0, height: 25.0)
                .offset(x:-150,y:50)
                .foregroundColor(Color(red: 172/255, green: 214/255, blue: 87/255))
            Text("The Global Food Banking Network is an\n organization dedicated to avioding food\n waste by redistributing food.")
                .offset(x:30, y:60)
            Circle()
                .frame(width: 25.0, height: 25.0)
                .offset(x:-150,y:200)
                .foregroundColor(Color(red: 172/255, green: 214/255, blue: 87/255))
            Text("Feeding America is an organization which\n combats food waste and aims to end\n hunger. On this website, American\n residents can find local food banks\n near them.")
                .offset(x:30, y:230)
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
    
    struct OrganizationsForResourves_Previews: PreviewProvider {
        static var previews: some View {
            OrganizationsForResourves()
        }
    }
}

