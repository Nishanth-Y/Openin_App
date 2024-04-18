//
//  NavigationBar.swift
//  Openin_App
//
//  Created by Nishanth Y on 18/04/24.
//

import Foundation
import SwiftUI

struct NavigationBarView: View {
    var iconSize:CGFloat = 20;
    var textSize: CGFloat = 15;
    var body: some View {
        ZStack(alignment: .bottom){
            
            TabView {
                NavigationView {
                    ScrollView{
                        VStack(alignment: .trailing, spacing: 24) {
                            //MARK: Title
                            HStack{
                                Text("Dashboard")
                                    .font(.title)
                                    .bold()
                                Spacer()
                                Image(systemName: "gear.circle")
                                    .font(.system(size: 25))
                                    .padding(.all, 5)
                                    .background(Color.Gear.opacity(0.15))
                                    .foregroundColor(Color.Gear.opacity(1))
                                    .cornerRadius(10.0)
                            }
                            
                        }
                    }.padding()
                     .frame(maxWidth: .infinity, maxHeight: 700)
                    .background(Color.background)
                }
                .tabItem {
                    Image(systemName: "link")
                        .font(.system(size: iconSize))
                    Text("Links")
                        .font(.system(size: textSize))
                    
                }.accentColor(.black)
                
                NavigationView {
                    Text("Course Tab Content")
                        .navigationBarTitle("Second Tab", displayMode: .inline)
                }
                .tabItem {
                    Image(systemName: "book")
                        .font(.system(size: iconSize)).foregroundColor(.blue)
                    Text("Courses")
                        .font(.system(size: textSize))
                }
                Spacer()
                NavigationView {
                    Text("Campaigns Tab Content")
                        .navigationBarTitle("Second Tab", displayMode: .large)
                }
                .tabItem {
                    Image(systemName: "speaker")
                        .font(.system(size: iconSize))
                    Text("Campaigns")
                        .font(.system(size: textSize))
                }
                NavigationView {
                    Text("Profile Tab Content")
                        .navigationBarTitle("Second Tab", displayMode: .inline)
                }
                .tabItem {
                    Image(systemName: "person")
                        .font(.system(size: iconSize))
                    Text("Profile")
                        .font(.system(size: textSize))
                }
                
            }.accentColor(.black)
            .foregroundColor(.white)
            Button(action: {}) {
                Image(systemName: "plus.circle.fill")
                    .font(.system(size: 70))
                    .foregroundColor(.blue)
                    .background(Color.Gear)
                    .cornerRadius(50.0)
            }
            .padding(EdgeInsets(top: 0, leading: 0, bottom:0, trailing: 0))
        }
        
        
    };
}
