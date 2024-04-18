//
//  ContentView.swift
//  Openin_App
//
//  Created by Nishanth Y on 17/04/24.
//

import SwiftUI
import SwiftUICharts
import Charts

//MARK: Auth Toke
//        Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MjU5MjcsImlhdCI6MTY3NDU1MDQ1MH0.dCkW0ox8tbjJA2GgUx2UEwNlbTZ7Rr38PVFJevYcXFI




struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    func getCurrentTime() -> String {
        let date = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: date)
        
        if hour >= 6 && hour < 12 {
            return "Good Morning"
        } else if hour >= 12 && hour < 18 {
            return "Good Afternoon"
        } else {
            return "Good Evening"
        }
    }

   var body: some View {
       @State var chart = OverallURLChart(hour_00: 0, hour_01: 0, hour_02: 0, hour_03: 0, hour_04: 0, hour_05: 0, hour_06: 0, hour_07: 0, hour_08: 0, hour_09: 0, hour_10: 0, hour_11: 0, hour_12: 0, hour_13: 0, hour_14: 0, hour_15: 0, hour_16: 0, hour_17: 0, hour_18: 0, hour_19: 0, hour_20: 0, hour_21: 0, hour_22: 0, hour_23: 0)
       let iconSize:CGFloat = 20;
       let textSize: CGFloat = 15;
       ZStack {
           if viewModel.isLoading {
               ProgressView()
           } else if viewModel.response != nil {
               
               ZStack(alignment: .bottom){
                   
                   TabView {
                       NavigationView {
                           ScrollView{
                               NavBarView()
                               VStack(alignment: .leading) {
                                   Text(getCurrentTime())
                                       .foregroundStyle(Color.gray)
                                       .fontWeight(.regular)
                                       .font(.system(size: 20))
                                       .padding(EdgeInsets(top: 50, leading: 15, bottom: 0, trailing: 100))
                                   Text("Nishanth Y 👍🏻")
                                       .foregroundStyle(Color.black)
                                       .fontWeight(.bold)
                                       .font(.system(size: 25))
                                       .padding(EdgeInsets(top: 1, leading: 15, bottom: 10, trailing: 200))
                                   //                       MARK: Chart
                                   Spacer()
                                   let jsonChart = viewModel.response?.data?.overall_url_chart;
//                                   AxisLabels {
//                                       ChartGrid {
//                                           LineChart()
//                                               .setLineWidth(width: 2)
//                                               .showChartMarks(true)
//                                               .showBackground(false)
//                                               .data(jsonChart?.dataPointsD ?? chart)
//                                               .rangeY(0...4)
//                                               .rangeX(0...23)
//                                               .chartStyle(ChartStyle(backgroundColor: .white, foregroundColor: ColorGradient(.blue, .purple)))
//                                       }
//                                       .setNumberOfHorizontalLines(11)
//                                       .setNumberOfVerticalLines(11)
//                                       .showBaseLine(true)
//                                   }
//                                   .setAxisYLabels(["0","1","10"])
//                                   .setAxisXLabels(["27 Oct", "2 Nov", "9 Nov", "15 Nov", "22 Nov"])
                                   CardView {
                                       LineChart()
                                           .data(jsonChart?.dataPoints ?? chart.dataPoints)
                                           .chartStyle(ChartStyle(backgroundColor: Color.systemBackground, foregroundColor: ColorGradient(Color.Faq.opacity(0.4), Color.white)))
                                            .frame(height: 250)
                                   }.padding()
                                   
                                   
                                   Spacer()
                                   //                       MARK: Hstack
                                   HStack{
                                       TopData(response: viewModel)
                                   }
                                   Spacer()
                                   //                       MARK: View Analytics Button
                                   HStack{
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
