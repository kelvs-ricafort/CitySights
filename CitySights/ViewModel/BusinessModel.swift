//
//  BusinessModel.swift
//  CitySights
//
//  Created by Kelvin on 6/17/24.
//

import Foundation
import SwiftUI
import CoreLocation

@Observable
class BusinessModel: NSObject, CLLocationManagerDelegate {
    var businesses = [Business]()
    var selectedBusiness: Business?
    
    var service = DataService()
    var locationManager = CLLocationManager()
    var currentUserLocation: CLLocationCoordinate2D?
    
    var locationAuthStatus: CLAuthorizationStatus = .notDetermined
    
    override init() {
        super.init()
        
        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
        locationManager.delegate = self
    }
    
    func getBusinesses(query: String?, options: String?, category: String?) {
        Task {
            businesses = await service.businessSearch(userLocation: currentUserLocation, query: query, options: options, category: category)
        }
    }
    
    func getUserLocation() {
        // Check if we have permission
        if locationManager.authorizationStatus == .authorizedWhenInUse {
            currentUserLocation = nil
            locationManager.requestLocation()
        } else {
            locationManager.requestWhenInUseAuthorization()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: any Error) {
        print(error.localizedDescription)
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        self.locationAuthStatus = manager.authorizationStatus
        
        // Detect if user allowed, then request location
        if manager.authorizationStatus == .authorizedWhenInUse {
            currentUserLocation = nil
            manager.requestLocation()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        if currentUserLocation == nil {
            
            currentUserLocation = locations.last?.coordinate
            getBusinesses(query: nil, options: nil, category: nil)
        }
        
        manager.stopUpdatingLocation()
    }
}
