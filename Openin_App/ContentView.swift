//
//  ContentView.swift
//  Openin_App
//
//  Created by Nishanth Y on 17/04/24.
//

import SwiftUI

//MARK: Auth Toke
//        Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjU5MjcsImlhdCI6MTY3NDU1MDQ1MH0.dCkW0ox8tbjJA2GgUx2UEwNlbTZ7Rr38PVFJevYcXFI



struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()

   var body: some View {
       var iconSize:CGFloat = 20;
       var textSize: CGFloat = 15;
       ZStack {
           if viewModel.isLoading {
               ProgressView()
           } else if let response = viewModel.response {
               ZStack(alignment: .bottom){
                   
                   TabView {
                       NavigationView {
                           ScrollView{
                               NavBarView()
                               VStack(alignment: .leading) {
                                   Text("Good morning")
                                       .foregroundStyle(Color.gray)
                                       .fontWeight(.regular)
                                       .font(.system(size: 20))
                                       .padding(EdgeInsets(top: 50, leading: 5, bottom: 0, trailing: 100))
                                   Text("Nishanth Y 👍🏻")
                                       .foregroundStyle(Color.black)
                                       .fontWeight(.bold)
                                       .font(.system(size: 25))
                                       .padding(EdgeInsets(top: 1, leading: 5, bottom: 10, trailing: 200))
                                   //                       MARK: Chart
                                   Spacer()
                                   //                       MARK: Hstack
                                   HStack{
                                       TopData(response: viewModel)
                                   }
                                   Spacer()
                                   //                       MARK: View Analytics Button
                                   HStack{
        //                               chart.line.uptrend.xyaxis
                                       Image(systemName: "chart.line.uptrend.xyaxis")
                                           .font(.system(size: 20))
                                        Text("View Analytics")
                                           .fontWeight(.bold)
                                       
                                   }
                                   .padding(EdgeInsets(top: 20, leading: 100 , bottom: 20, trailing: 100))
                                   .border(Color.Icon)
                                   .cornerRadius(7)
                                   .offset(x:18, y:0)
                                   Spacer()
                                   //                       MARK: Hstack (TOP, RECENT LINKS)
                                   LinkView(response: viewModel)
                                       .background(Color.Back2)
                               
                                   //                       MARK: ListView :4
                                   //                       MARK: View all Link Button
                                   
                                   //                       MARK: Whatsapp
                                   
                               }
                               .frame(width: 390)
                               .background(Color.Back2)
                               .clipShape(
                                .rect(
                                    topLeadingRadius: 20,
                                    bottomLeadingRadius: 0,
                                    bottomTrailingRadius: 0,
                                    topTrailingRadius: 20
                                    )
                               )
                               .offset(x:-0, y:-30)
                               
                           }
                       }
                       .edgesIgnoringSafeArea(.top)
                       .frame(maxWidth: .infinity)
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
                       
                   }
                   .accentColor(.black)
                   .background(Color.white)
                   Button(action: {}) {
                      Image(systemName: "plus.circle.fill")
                          .font(.system(size: 70))
                          .foregroundColor(.blue)
                          .background(
                            Circle()
                                .foregroundColor(Color.white)
                            )
                  }
                  .padding(EdgeInsets(top: 0, leading: 0, bottom:0, trailing: 0))
               }
               
           } else if let error = viewModel.error {
               Text("Error: \(error.localizedDescription)")
           }
       }
       .onAppear {
           viewModel.fetchData()
       }
   }
}



#Preview {
    ContentView()
}
