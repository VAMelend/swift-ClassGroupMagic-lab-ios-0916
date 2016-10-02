//
//  Coordinate.swift
//  PeopleAndPizza
//
//  Created by Victoria Melendez on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
extension Double {
    var radians: Double {
        return self * M_PI / 180
    }
}



class Coordinate{
    var latitude: Double
    var longitude: Double
    
    var isNorthernHemisphere:Bool {
        if latitude > 0{
            return true
        }
        else {
            return false
        }
    }
    
    var isSouthernHemisphere: Bool {
        if latitude < 0 {
            return true
        }
        else{
            return false
        }
    }
    
    var isInWesternHemisphere:Bool {
        if longitude > 0 {
        return true
        }
        else{ return false
    }
    }
    
    var isInEasternHemisphere: Bool {
        if longitude < 0 {
            return true
        }
        else{
            return false
        }
    }
    
    init(latitude: Double, longitude: Double){
        self.latitude = latitude
        self.longitude = longitude
    }
    
    func distanceTo(coordinate:Coordinate) -> Double {
        
        
        return acos(sin(self.latitude.radians) * sin(coordinate.latitude.radians) + cos(self.latitude.radians) * cos(coordinate.latitude.radians) * cos(self.latitude.radians-coordinate.latitude.radians)) * 6371000 / 1000
        
    }
    
}







//let joelsLocation = Coordinate(latitude: 0.0, longitude: 0.0)
//let victoriasLocation = Coordinate(latitude: 0.0, longitude: 0.0)
//
//joelsLocation.distanceTo(coordinate: victoriasLocation)












