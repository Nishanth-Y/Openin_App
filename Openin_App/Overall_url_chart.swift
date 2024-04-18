/* 
Copyright (c) 2024 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.edin.com/in/syedabsar

*/

import Foundation
import Foundation

struct OverallURLChart: Codable {
    let hour_00: Double?
    let hour_01: Double?
    let hour_02: Double?
    let hour_03: Double?
    let hour_04: Double?
    let hour_05: Double?
    let hour_06: Double?
    let hour_07: Double?
    let hour_08: Double?
    let hour_09: Double?
    let hour_10: Double?
    let hour_11: Double?
    let hour_12: Double?
    let hour_13: Double?
    let hour_14: Double?
    let hour_15: Double?
    let hour_16: Double?
    let hour_17: Double?
    let hour_18: Double?
    let hour_19: Double?
    let hour_20: Double?
    let hour_21: Double?
    let hour_22: Double?
    let hour_23: Double?

    enum CodingKeys: String, CodingKey {
        case hour_00 = "00:00"
        case hour_01 = "01:00"
        case hour_02 = "02:00"
        case hour_03 = "03:00"
        case hour_04 = "04:00"
        case hour_05 = "05:00"
        case hour_06 = "06:00"
        case hour_07 = "07:00"
        case hour_08 = "08:00"
        case hour_09 = "09:00"
        case hour_10 = "10:00"
        case hour_11 = "11:00"
        case hour_12 = "12:00"
        case hour_13 = "13:00"
        case hour_14 = "14:00"
        case hour_15 = "15:00"
        case hour_16 = "16:00"
        case hour_17 = "17:00"
        case hour_18 = "18:00"
        case hour_19 = "19:00"
        case hour_20 = "20:00"
        case hour_21 = "21:00"
        case hour_22 = "22:00"
        case hour_23 = "23:00"
    }
    
    var dataPoints: [(String, Double)] {
            return [
                ("00:00", Double(hour_00!*2)),
                ("01:00", Double(hour_01!*2)),
                ("02:00", Double(hour_02!*2)),
                ("03:00", Double(hour_03!*2)),
                ("04:00", Double(hour_04!*2)),
                ("05:00", Double(hour_05!*2)),
                ("06:00", Double(hour_06!*2)),
                ("07:00", Double(hour_07!*2)),
                ("08:00", Double(hour_08!*2)),
                ("09:00", Double(hour_09!*2)),
                ("10:00", Double(hour_10!*2)),
                ("11:00", Double(hour_11!*2)),
                ("12:00", Double(hour_12!*2)),
                ("13:00", Double(hour_13!*2)),
                ("14:00", Double(hour_14!*2)),
                ("15:00", Double(hour_15!*2)),
                ("16:00", Double(hour_16!*2)),
                ("17:00", Double(hour_17!*2)),
                ("18:00", Double(hour_18!*2)),
                ("19:00", Double(hour_19!*2)),
                ("20:00", Double(hour_20!*2)),
                ("21:00", Double(hour_21!*2)),
                ("22:00", Double(hour_22!*2)),
                ("23:00", Double(hour_23!*2))
            ]
        }
    var dataPointsD: [(Double)] {
            return [
                (Double(hour_00!*2)),
                (Double(hour_01!*2)),
                ( Double(hour_02!*2)),
                ( Double(hour_03!*2)),
                ( Double(hour_04!*2)),
                (Double(hour_05!*2)),
                ( Double(hour_06!*2)),
                (Double(hour_07!*2)),
                ( Double(hour_08!*2)),
                (Double(hour_09!*2)),
                (Double(hour_10!*2)),
                (Double(hour_11!*2)),
                (Double(hour_12!*2)),
                (Double(hour_13!*2)),
                (Double(hour_14!*2)),
                ( Double(hour_15!*2)),
                (Double(hour_16!*2)),
                ( Double(hour_17!*2)),
                ( Double(hour_18!*2)),
                (Double(hour_19!*2)),
                (Double(hour_20!*2)),
                (Double(hour_21!*2)),
                (Double(hour_22!*2)),
                (Double(hour_23!*2))
            ]
        }
}
