//
//  LearnMoreAboutFoodWaste.swift
//  finalProject
//
//  Created by Noga Gercsak on 7/20/23.
//

import SwiftUI
struct LearnMoreAboutFoodWaste: View {
    var body: some View {
        ZStack {
            Group {
                Color(red: 246/255, green: 240/255, blue: 214/255)
                    .ignoresSafeArea()
                Text("Ways To Avoid Wasting Food")
                    .font(.title)
                    .fontWeight(.bold)
                    .offset(x:0,y:-325)
                    .foregroundColor(Color(red: 172/255, green: 214/255, blue: 87/255))
                Capsule()
                    .frame(width: 350.0, height: 150.0)
                    .offset(x:0, y:-200)
                    .foregroundColor(Color(red: 172/255, green: 214/255, blue: 87/255))
                Circle()
                    .frame(width: 100.0, height: 100.0)
                    .offset(x:-100, y:-200)
                    .foregroundColor(Color(red: 200/255, green: 255/255, blue: 50/255))
                Text("1")
                    .fontWeight(.heavy)
                    .font(.largeTitle)
                    .foregroundColor(Color(red: 172/255, green: 214/255, blue: 87/255))
                    .frame(height: 500.0)
                    .offset(x:-100,y:-200)
                Text("Composting")
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black)
                    .offset(x:-100,y:-200)
                Text("Composting is an\n environmentally friendly\n way to decrease the\n amount of food you \nwaste.")
                    .offset(x:60,y:-200)
            }
            Group {
                Capsule()
                    .frame(width: 350.0, height: 150.0)
                    .offset(x:0, y:-30)
                    .foregroundColor(Color(red: 172/255, green: 214/255, blue: 87/255))
                Circle()
                    .frame(width: 100.0, height: 100.0)
                    .offset(x:-100, y:-30)
                    .foregroundColor(Color(red: 200/255, green: 255/255, blue: 50/255))
                Text("2")
                    .fontWeight(.heavy)
                    .font(.largeTitle)
                    .offset(x:-100,y:-30)
                    .foregroundColor(Color(red: 172/255, green: 214/255, blue: 87/255))
                Text("Freezing\n Food")
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                    .offset(x:-100,y:-30)
                Text("Freezing your food until\n it is ready to be consumed\n is a great way to keep your\n food from going bad.")
                    .offset(x:60,y:-30)
            }
            Group {
                Capsule()
                    .frame(width: 350.0, height: 150.0)
                    .offset(x:0, y:140)
                    .foregroundColor(Color(red: 172/255, green: 214/255, blue: 87/255))
                Circle()
                    .frame(width: 100.0, height: 100.0)
                    .offset(x:-100, y:140)
                    .foregroundColor(Color(red: 200/255, green: 255/255, blue: 50/255))
                Text("3")
                    .fontWeight(.heavy)
                    .font(.largeTitle)
                    .offset(x:-100,y:140)
                    .foregroundColor(Color(red: 172/255, green: 214/255, blue: 87/255))
                Text("Use This \nApp")
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                    .offset(x:-100,y:140)
                Text("Our app has built in features\n that will prevent food \nwastage! Be sure to \nconsistently use this app!")
                    .offset(x:60,y:140)
            }
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
struct LearnMoreAboutFoodWaste_Previews: PreviewProvider {
    static var previews: some View {
        LearnMoreAboutFoodWaste()
    }
}
