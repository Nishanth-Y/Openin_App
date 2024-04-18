/* 
Copyright (c) 2024 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Top_links : Codable, Identifiable {
    let id = UUID()
	let url_id : Int?
	let web_link : String?
	let smart_link : String?
	let title : String?
	let total_clicks : Int?
	let original_image : String?
	let thumbnail : String?
	let times_ago : String?
	let created_at : String?
	let domain_id : String?
	let url_prefix : String?
	let url_suffix : String?
	let app : String?
	let is_favourite : Bool?

	enum CodingKeys: String, CodingKey {

		case url_id = "url_id"
		case web_link = "web_link"
		case smart_link = "smart_link"
		case title = "title"
		case total_clicks = "total_clicks"
		case original_image = "original_image"
		case thumbnail = "thumbnail"
		case times_ago = "times_ago"
		case created_at = "created_at"
		case domain_id = "domain_id"
		case url_prefix = "url_prefix"
		case url_suffix = "url_suffix"
		case app = "app"
		case is_favourite = "is_favourite"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		url_id = try values.decodeIfPresent(Int.self, forKey: .url_id)
		web_link = try values.decodeIfPresent(String.self, forKey: .web_link)
		smart_link = try values.decodeIfPresent(String.self, forKey: .smart_link)
		title = try values.decodeIfPresent(String.self, forKey: .title)
		total_clicks = try values.decodeIfPresent(Int.self, forKey: .total_clicks)
		original_image = try values.decodeIfPresent(String.self, forKey: .original_image)
		thumbnail = try values.decodeIfPresent(String.self, forKey: .thumbnail)
		times_ago = try values.decodeIfPresent(String.self, forKey: .times_ago)
		created_at = try values.decodeIfPresent(String.self, forKey: .created_at)
		domain_id = try values.decodeIfPresent(String.self, forKey: .domain_id)
		url_prefix = try values.decodeIfPresent(String.self, forKey: .url_prefix)
		url_suffix = try values.decodeIfPresent(String.self, forKey: .url_suffix)
		app = try values.decodeIfPresent(String.self, forKey: .app)
		is_favourite = try values.decodeIfPresent(Bool.self, forKey: .is_favourite)
	}

}
