//
//  BusinessDetailView.swift
//  CitySights
//
//  Created by Kelvin on 6/14/24.
//

import SwiftUI

struct BusinessDetailView: View {
    
    var business: Business?
    
    var body: some View {
        Text(business?.name ?? "")
    }
}

#Preview {
    BusinessDetailView()
}
