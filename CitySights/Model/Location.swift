//
//  Location.swift
//  CitySights
//
//  Created by Kelvin on 6/13/24.
//

import Foundation

struct Location: Decodable {
    var address1: String?
    var address2: String?
    var address3: String?
    var city: String?
    var country: String?
    var display_address: [String]?
    var state: String?
    var zip_code: String?
}
