/* 
Copyright (c) 2024 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Overall_url_chart : Codable {
	let 00:00 : Int?
	let 01:00 : Int?
	let 02:00 : Int?
	let 03:00 : Int?
	let 04:00 : Int?
	let 05:00 : Int?
	let 06:00 : Int?
	let 07:00 : Int?
	let 08:00 : Int?
	let 09:00 : Int?
	let 10:00 : Int?
	let 11:00 : Int?
	let 12:00 : Int?
	let 13:00 : Int?
	let 14:00 : Int?
	let 15:00 : Int?
	let 16:00 : Int?
	let 17:00 : Int?
	let 18:00 : Int?
	let 19:00 : Int?
	let 20:00 : Int?
	let 21:00 : Int?
	let 22:00 : Int?
	let 23:00 : Int?

	enum CodingKeys: String, CodingKey {

		case 00:00 = "00:00"
		case 01:00 = "01:00"
		case 02:00 = "02:00"
		case 03:00 = "03:00"
		case 04:00 = "04:00"
		case 05:00 = "05:00"
		case 06:00 = "06:00"
		case 07:00 = "07:00"
		case 08:00 = "08:00"
		case 09:00 = "09:00"
		case 10:00 = "10:00"
		case 11:00 = "11:00"
		case 12:00 = "12:00"
		case 13:00 = "13:00"
		case 14:00 = "14:00"
		case 15:00 = "15:00"
		case 16:00 = "16:00"
		case 17:00 = "17:00"
		case 18:00 = "18:00"
		case 19:00 = "19:00"
		case 20:00 = "20:00"
		case 21:00 = "21:00"
		case 22:00 = "22:00"
		case 23:00 = "23:00"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		00:00 = try values.decodeIfPresent(Int.self, forKey: .00:00)
		01:00 = try values.decodeIfPresent(Int.self, forKey: .01:00)
		02:00 = try values.decodeIfPresent(Int.self, forKey: .02:00)
		03:00 = try values.decodeIfPresent(Int.self, forKey: .03:00)
		04:00 = try values.decodeIfPresent(Int.self, forKey: .04:00)
		05:00 = try values.decodeIfPresent(Int.self, forKey: .05:00)
		06:00 = try values.decodeIfPresent(Int.self, forKey: .06:00)
		07:00 = try values.decodeIfPresent(Int.self, forKey: .07:00)
		08:00 = try values.decodeIfPresent(Int.self, forKey: .08:00)
		09:00 = try values.decodeIfPresent(Int.self, forKey: .09:00)
		10:00 = try values.decodeIfPresent(Int.self, forKey: .10:00)
		11:00 = try values.decodeIfPresent(Int.self, forKey: .11:00)
		12:00 = try values.decodeIfPresent(Int.self, forKey: .12:00)
		13:00 = try values.decodeIfPresent(Int.self, forKey: .13:00)
		14:00 = try values.decodeIfPresent(Int.self, forKey: .14:00)
		15:00 = try values.decodeIfPresent(Int.self, forKey: .15:00)
		16:00 = try values.decodeIfPresent(Int.self, forKey: .16:00)
		17:00 = try values.decodeIfPresent(Int.self, forKey: .17:00)
		18:00 = try values.decodeIfPresent(Int.self, forKey: .18:00)
		19:00 = try values.decodeIfPresent(Int.self, forKey: .19:00)
		20:00 = try values.decodeIfPresent(Int.self, forKey: .20:00)
		21:00 = try values.decodeIfPresent(Int.self, forKey: .21:00)
		22:00 = try values.decodeIfPresent(Int.self, forKey: .22:00)
		23:00 = try values.decodeIfPresent(Int.self, forKey: .23:00)
	}

}