//
//  TaskBarView.swift
//  Openin_App
//
//  Created by Nishanth Y on 18/04/24.
//

import SwiftUI

struct TaskBarView: View {
    var iconSize:CGFloat = 20;
    var textSize: CGFloat = 15;
    var body: some View {
        ZStack(alignment: .bottom){
            
            TabView {
                NavigationView {
                    Text("Link Tab Content")
                        .navigationBarTitle("First Tab", displayMode: .inline)
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
                        .navigationBarTitle("Second Tab", displayMode: .inline)
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
            Button(action: {}) {
               Image(systemName: "plus.circle.fill")
                   .font(.system(size: 70))
                   .foregroundColor(.blue)
           }
           .padding(EdgeInsets(top: 0, leading: 0, bottom:0, trailing: 0))
        }
            
        
    };

}

#Preview {
    TaskBarView()
}
