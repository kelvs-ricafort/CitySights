//
//  Business.swift
//  CitySights
//
//  Created by Kelvin on 6/13/24.
//

import Foundation

struct Business: Decodable {
    var id: String?
    var alias: String?
    var categories: [Category]
    var coordinates: Coordinate?
    var display_phone: String?
    var distance: Double?
    var image_url: String?
    var location: Location?
    var name: String?
    var phone: String?
    var price: String?
    var rating: Double?
    var review_rating: Int?
    var url: String?
}
