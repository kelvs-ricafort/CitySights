//
//  CitySightsApp.swift
//  CitySights
//
//  Created by Kelvin on 6/13/24.
//

import SwiftUI

@main
struct CitySightsApp: App {
    
    @State var model = BusinessModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(model)
        }
    }
}
