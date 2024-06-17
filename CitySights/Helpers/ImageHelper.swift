//
//  ImageHelper.swift
//  CitySights
//
//  Created by Kelvin on 6/17/24.
//

import Foundation

struct ImageHelper {
    static func ratingToStars(rating: Double) -> String {
        return "regular_\(round((rating * 2.0))*0.5)"
    }
}
