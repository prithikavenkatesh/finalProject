//
//  resourcesPage.swift
//  finalProject
//
//  Created by Noga Gercsak on 7/19/23.
//

import SwiftUI

struct resourcesPage: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 246/255, green: 240/255, blue: 214/255)
                    .ignoresSafeArea()
                NavigationLink(destination: OrganizationsForResourves()) {
                    ZStack {
                        VStack {
                            Capsule()
                                .frame(width: 350.0, height: 125.0)
                                .offset(x:0,y:-100)
                                .foregroundColor(Color(red: 172/255, green: 214/255, blue: 87/255))
                            Text("Organizations For Donations")
                                .foregroundColor(Color.black)
                                .offset(x:0,y:-180)
                            NavigationLink(destination: LearnMoreAboutFoodWaste()) {
                                
                                ZStack {
                                    VStack {
                                        Capsule()
                                            .foregroundColor(Color(red: 172/255, green: 214/255, blue: 87/255))
                                            .frame(width: 350.0, height: 125.0)
                                            .offset(x:0,y:0)
                                        Text("Ways to Prevent Food Waste")
                                            .foregroundColor(Color.black)
                                            .offset(x:0, y:-80)
                                        NavigationLink(destination: QRCode()) {
                                            ZStack {
                                                VStack {
                                                    Capsule()
                                                        .foregroundColor(Color(red: 172/255, green: 214/255, blue: 87/255))
                                                        .frame(width: 350, height: 125)
                                                        .offset(x:0, y:100)
                                                    Text("QR Code")
                                                        .foregroundColor(Color.black)
                                                        .offset(x:0,y:20)
                                                }
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                            }
                        }
                    }
                }
                
            }
        }
    }
}


struct resourcesPage_Previews: PreviewProvider {
    static var previews: some View {
        resourcesPage()
    }
}
