//
//  DriverAnnotation.swift
//  UberCloneApp
//
//  Created by 宮本一成 on 2020/09/23.
//  Copyright © 2020 ISSEY MIYAMOTO. All rights reserved.
//

import MapKit

class DriverAnnotation: NSObject, MKAnnotation{
    dynamic var coordinate: CLLocationCoordinate2D
    var uid: String
    
    init(uid: String, coordinate: CLLocationCoordinate2D){
        self.coordinate = coordinate
        self.uid = uid
    }
    
    func updateAnnotationPosition(withCoordinate coordinate: CLLocationCoordinate2D){
        UIView.animate(withDuration: 0.2) {
            self.coordinate = coordinate
        }
    }
}
