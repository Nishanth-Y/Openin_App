//
//  TopData.swift
//  Openin_App
//
//  Created by Nishanth Y on 18/04/24.
//

import SwiftUI

struct TopData: View {
    @StateObject var response: ContentViewModel
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 20) {
                VStack(spacing: 10){
                    Image(systemName: "cursorarrow.click")
                        .font(.system(size: 25))
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(Color.blue, .primary)
                        .padding(.trailing, 70.0)
                    
                    Text(String(response.response?.today_clicks ?? 0))
                        .foregroundStyle(Color.black)
                        .foregroundStyle(.white)
                        .font(.system(size: 22))
                        .padding(.trailing, 70)
                    
                    Text("Today's clicks")
                        .foregroundStyle(.gray)
                        .font(.system(size: 10))
                        .padding(.trailing, 20.0)

                }
                .frame(width: 120, height: 120)
                .background(.white)
                .cornerRadius(8)

                VStack(spacing: 10){
                    Image(systemName: "location.circle")
                        .font(.system(size: 25))
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(Color.blue, .primary)
                        .padding(.trailing, 70.0)
                    let subLocation = (response.response?.top_location?.prefix(6) ?? "") + ".."
                    Text(subLocation)
                        .foregroundStyle(Color.black)
                        .foregroundStyle(.white)
                        .font(.system(size: 20))
                        .padding(.trailing, 40)
                    Text("Top Location")
                        .foregroundStyle(.gray)
                        .font(.system(size: 10))
                        .padding(.trailing, 40)

                }
                .frame(width: 120, height: 120)
                .background(.white)
                .cornerRadius(8)
                VStack(spacing: 10){
                    Image(systemName: "globe")
                        .font(.system(size: 25))
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(Color.blue, .primary)
                        .padding(.trailing, 70.0)
                    Text(String(response.response?.top_source ?? ""))
                        .foregroundStyle(Color.black)
                        .foregroundStyle(.white)
                        .font(.system(size: 22))
                        .padding(.trailing, 40)
                    Text("Top Source")
                        .foregroundStyle(.gray)
                        .font(.system(size: 10))
                        .padding(.trailing, 40)

                }
                .frame(width: 120, height: 120)
                .background(.white)
                .cornerRadius(8)
                VStack(spacing: 10){
                    Image(systemName: "clock.arrow.circlepath")
                        .font(.system(size: 25))
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(Color.blue, .primary)
                        .padding(.trailing, 70.0)
                    Text((response.response?.startTime ?? "") + " - " + getCurrentHour())
                        .foregroundStyle(Color.black)
                        .foregroundStyle(.white)
                        .font(.system(size: 18))
                        .padding(.leading, 2)
                    Text("Best Time")
                        .foregroundStyle(.gray)
                        .font(.system(size: 10))
                        .padding(.trailing, 40)

                }
                .frame(width: 120, height: 120)
                .background(.white)
                .cornerRadius(8)

            }.padding()
        }
    }
}

func getCurrentHour() -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = "HH:mm"
    return formatter.string(from: Date())
}

#Preview {
    TopData(response: ContentViewModel())
}
