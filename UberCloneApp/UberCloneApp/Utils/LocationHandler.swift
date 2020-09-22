//
//  LocationHandler.swift
//  UberCloneApp
//
//  Created by 宮本一成 on 2020/09/22.
//  Copyright © 2020 ISSEY MIYAMOTO. All rights reserved.
//

import CoreLocation

class LocationHandler: NSObject, CLLocationManagerDelegate{
    
    static let shared = LocationHandler()
    var locationManager: CLLocationManager!
    var location: CLLocation?
    
    override init() {
        super.init()
        
        locationManager = CLLocationManager()
        locationManager.delegate = self
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == .authorizedWhenInUse{
            locationManager.requestAlwaysAuthorization()
        }
    }
}
