//
//  NavigationView.swift
//  Openin_App
//
//  Created by Nishanth Y on 18/04/24.
//

import SwiftUI

struct NavBarView: View {
    var body: some View {
        VStack(alignment: .trailing, spacing: 24) {
            //MARK: Title
            HStack{
                Text("Dashboard")
                    .font(.title)
                    .bold()
                    .foregroundStyle(Color.white)
                Spacer()
                Image(systemName: "gear.circle")
                    .font(.system(size: 25))
                    .padding(.all, 5)
                    .background(Color.Gear.opacity(0.15))
                    .foregroundColor(Color.Gear.opacity(1))
                    .cornerRadius(10.0)
            }
            .padding(EdgeInsets(top: 40, leading: 10, bottom: 40, trailing: 10))
            .background(Color.blue)
        }
        .safeAreaInset(edge: .top) {
            // Adjustments for content near the top safe area
            Color.clear // Use a clear color to effectively ignore the safe area
        }
    }
}


#Preview {
    NavBarView()
}
