//
//  BusinessModel.swift
//  CitySights
//
//  Created by Kelvin on 6/17/24.
//

import Foundation
import SwiftUI

@Observable
class BusinessModel {
    var businesses = [Business]()
    var query: String = ""
    var selectedBusiness: Business?
    
    var service = DataService()
    
    func getBusinesses() {
        Task {
            businesses = await service.businessSearch()
        }
    }
}
