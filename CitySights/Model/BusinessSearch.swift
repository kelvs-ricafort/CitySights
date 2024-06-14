//
//  BusinessSearch.swift
//  CitySights
//
//  Created by Kelvin on 6/13/24.
//

import Foundation

struct BusinessSearch: Decodable {
    var businesses: [Business] = [Business]()
    var region = Region()
    var total = 0
}
