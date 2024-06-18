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
    @AppStorage("onboarding") var needsOnboarding = true
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environment(model)
                .fullScreenCover(isPresented: $needsOnboarding) {
                    // TODO on dismiss
                    needsOnboarding = false
                } content: {
                    OnboardingView()
                        .environment(model)
                }
                .onAppear {
                    if needsOnboarding == false {
                        model.getUserLocation()
                    }
                }
        }
    }
}
