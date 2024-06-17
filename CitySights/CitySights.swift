//
//  CitySights.swift
//  CitySights
//
//  Created by Kelvin on 6/13/24.
//

import SwiftUI

@main
struct CitySights: App {
    
    @State var model = BusinessModel()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environment(model)
        }
    }
}
