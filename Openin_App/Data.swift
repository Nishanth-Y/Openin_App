/* 
Copyright (c) 2024 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Data : Codable {
	let recent_links : [Recent_links]?
	let top_links : [Top_links]?
	let favourite_links : [String]?
	let overall_url_chart : OverallURLChart?

	enum CodingKeys: String, CodingKey {

		case recent_links = "recent_links"
		case top_links = "top_links"
		case favourite_links = "favourite_links"
		case overall_url_chart = "overall_url_chart"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		recent_links = try values.decodeIfPresent([Recent_links].self, forKey: .recent_links)
		top_links = try values.decodeIfPresent([Top_links].self, forKey: .top_links)
		favourite_links = try values.decodeIfPresent([String].self, forKey: .favourite_links)
		overall_url_chart = try values.decodeIfPresent(OverallURLChart.self, forKey: .overall_url_chart)
	}

}
