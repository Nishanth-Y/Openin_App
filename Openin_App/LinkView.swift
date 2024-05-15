//
//  LInkView.swift
//  Openin_App
//
//  Created by Nishanth Y on 18/04/24.
//

import SwiftUI



struct RemoteImage: View {
    let urlString: String
    
    var body: some View {
        if let url = URL(string: urlString) {
            AsyncImage(url: url) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                case .success(let image):
                    image.resizable()
                case .failure:
                    Image(systemName: "photo")
                        .resizable()
                @unknown default:
                    EmptyView()
                }
            }
        } else {
            Image(systemName: "photo")
                .resizable()
        }
    }
}


struct LinkView: View {
    @StateObject var response: ContentViewModel
    @State var top_links = [Top_links]()
    @State var recent_links = [Recent_links]()

    @State private var isTopLinks = true
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Button(action: {
                        isTopLinks = true
                    }) {
                        Text("Top Links")
                            .foregroundColor(isTopLinks ? .white : .gray)
                            .padding()
                            .background(isTopLinks ? Color.blue : Color.white)
                            .cornerRadius(20)
                    }
                    
                    Button(action: {
                        isTopLinks = false
                    }) {
                        Text("Recent Links")
                            .foregroundColor(isTopLinks ? .gray : .white)
                            .padding()
                            .background(isTopLinks ? Color.white : Color.blue)
                            .cornerRadius(20)
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        // Handle search action
                    }) {
                        Image(systemName: "magnifyingglass")
                            .padding()
                    }
                }
                .padding()

                ScrollView {
                    VStack(spacing: 16) {
                        if isTopLinks {
                           ForEach(response.response?.data?.top_links ?? top_links){ top_link in
                               let subtitle = String(top_link.title?.prefix(10) ?? "")
                               LinkRow(linkName: subtitle+"...", date: String(top_link.created_at?.prefix(10) ?? ""), clicks: top_link.total_clicks ?? 0, link: top_link.web_link ?? "", originalImage: top_link.original_image!)
                           }
                       } else {
                           ForEach(response.response?.data?.recent_links ?? recent_links){ recent_link in
                               let subtitle = String(recent_link.title?.prefix(10) ?? "")

                               LinkRow(linkName: subtitle+"...", date: String(recent_link.created_at?.prefix(10) ?? ""), clicks: recent_link.total_clicks ?? 0, link: recent_link.web_link ?? "", originalImage: recent_link.original_image!)
                           }
                       }
                        HStack{
                            Image(systemName: "link")
                                .font(.system(size: 20))
                             Text("View All Links")
                                .fontWeight(.bold)
                            
                        }
                        .padding(EdgeInsets(top: 20, leading: 110 , bottom: 20, trailing: 100))
                        .border(Color.Icon)
                        .cornerRadius(7)
                        .offset(x:2, y:0)
                        HStack{
                            Image("Whatsapp")
                                .font(.system(size: 20))
                             Text("Talk With us")
                                .fontWeight(.bold)
                            
                        }
                        .padding(EdgeInsets(top: 20, leading: 5 , bottom: 20, trailing: 210))
                        .background(Color.Whatsapp.opacity(0.32))
                        .border(Color.Icon)
                        .cornerRadius(7)
                        .offset(x:0, y:0)
                        //                       MARK: FAQ
                        HStack{
                            Image(systemName: "questionmark.circle")
                                .font(.system(size: 20))
                             Text("Frequently Asked Questions")
                                .fontWeight(.bold)
                            
                        }
                        .padding(EdgeInsets(top: 20, leading: 10 , bottom: 20, trailing: 80))
                        .border(Color.Icon)
                        .background(Color.Faq.opacity(0.32))
                        .cornerRadius(7)
                        .offset(x:2, y:0)
                    }.padding()
                }
            }
        }
    }
}

struct DotLink: View {
    let link: String
    
    var body: some View {
        HStack {
            Text(link)
                .font(.system(size: 14))
                .foregroundColor(.blue)
                .lineLimit(1)
                .minimumScaleFactor(0.5)
            Spacer()
            Button(action: {}) {
                Image(systemName: "doc.on.doc")
                    .foregroundColor(.blue)
            }
        }
        .padding(.all, 12)
        .background(
            RoundedRectangle(cornerRadius: 8)
                .stroke(style: .init(dash: [10]))
                .foregroundColor(.blue)
                .background(Color.LinkBlue)
        )
        .clipShape(
            .rect(
                topLeadingRadius: 0, bottomLeadingRadius: 8, bottomTrailingRadius: 8, topTrailingRadius: 0
            )
        )
    }
}
    

struct LinkRow: View {
    let linkName: String
    let date: String
    let clicks: Int
    let link: String
    let originalImage: String
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    RemoteImage(urlString: originalImage)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                        .border(Color.gray.opacity(0.3))
                    //                    Image("Whatsapp")
                    //                        .resizable()
                    //                        .aspectRatio(contentMode: .fit)
                    //                        .frame(width: 50, height: 50)
                    //                        .border(Color.gray.opacity(0.3))
                    Text(linkName)
                        .font(.system(size: 20))
                        .padding([.leading, .trailing], 10)
                    Spacer()
                    Text("\(clicks)")
                        .font(.headline)
                }
                Text("Clicks")
                    .font(.system(size: 15))
                    .foregroundStyle(Color.gray)
                    .offset(x:290, y:0)
                Text(formatDate(date))
                    .font(.caption)
                    .foregroundColor(.gray)
                DotLink(link: link)
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 8).stroke(Color.gray.opacity(0.3), lineWidth: 1))
        }
    }
    //    func formatDate(_ dateString: String) -> String {
    //        let formatter = ISO8601DateFormatter()
    //        formatter.formatOptions = [.withFractionalSeconds]
    //        if let date = formatter.date(from: dateString) {
    //            let formatter = DateFormatter()
    //            formatter.dateStyle = .long
    //            formatter.timeStyle = .none
    //            return formatter.string(from: date)
    //        }
    //        return "Invalid date"
    //    }
    func formatDate(_ dateString: String) -> String {
        let dateFormatter = DateFormatter()
           dateFormatter.dateFormat = "yyyy-MM-dd"
           
       if let date = dateFormatter.date(from: dateString) {
           let outputFormatter = DateFormatter()
           outputFormatter.dateFormat = "dd MMMM yyyy"
           return outputFormatter.string(from: date)
       } else {
           return dateString
       }
    }

}



#Preview {
    LinkView(response: ContentViewModel())
}
