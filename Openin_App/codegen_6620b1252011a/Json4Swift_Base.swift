/* 
Copyright (c) 2024 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Json4Swift_Base : Codable {
	let status : Bool?
	let statusCode : Int?
	let message : String?
	let support_whatsapp_number : String?
	let extra_income : Double?
	let total_links : Int?
	let total_clicks : Int?
	let today_clicks : Int?
	let top_source : String?
	let top_location : String?
	let startTime : String?
	let links_created_today : Int?
	let applied_campaign : Int?
	let data : Data?

	enum CodingKeys: String, CodingKey {

		case status = "status"
		case statusCode = "statusCode"
		case message = "message"
		case support_whatsapp_number = "support_whatsapp_number"
		case extra_income = "extra_income"
		case total_links = "total_links"
		case total_clicks = "total_clicks"
		case today_clicks = "today_clicks"
		case top_source = "top_source"
		case top_location = "top_location"
		case startTime = "startTime"
		case links_created_today = "links_created_today"
		case applied_campaign = "applied_campaign"
		case data = "data"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		status = try values.decodeIfPresent(Bool.self, forKey: .status)
		statusCode = try values.decodeIfPresent(Int.self, forKey: .statusCode)
		message = try values.decodeIfPresent(String.self, forKey: .message)
		support_whatsapp_number = try values.decodeIfPresent(String.self, forKey: .support_whatsapp_number)
		extra_income = try values.decodeIfPresent(Double.self, forKey: .extra_income)
		total_links = try values.decodeIfPresent(Int.self, forKey: .total_links)
		total_clicks = try values.decodeIfPresent(Int.self, forKey: .total_clicks)
		today_clicks = try values.decodeIfPresent(Int.self, forKey: .today_clicks)
		top_source = try values.decodeIfPresent(String.self, forKey: .top_source)
		top_location = try values.decodeIfPresent(String.self, forKey: .top_location)
		startTime = try values.decodeIfPresent(String.self, forKey: .startTime)
		links_created_today = try values.decodeIfPresent(Int.self, forKey: .links_created_today)
		applied_campaign = try values.decodeIfPresent(Int.self, forKey: .applied_campaign)
		data = try values.decodeIfPresent(Data.self, forKey: .data)
	}

}