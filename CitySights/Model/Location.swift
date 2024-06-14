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
    var displayAddress: [String]?
    var state: String?
    var zipCode: String?
    
    enum CodingKeys: String, CodingKey {
        case displayAddress = "display_address"
        case zipCode = "zip_code"
        
        case address1
        case address2
        case address3
        case city
        case country
        case state
    }
}
