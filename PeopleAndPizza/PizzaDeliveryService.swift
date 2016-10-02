//
//  PizzaDeliveryService.swift
//  PeopleAndPizza
//
//  Created by Victoria Melendez on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
class PizzaDeliveryService {
    var location: Coordinate
    var pizzasAvailable: Int
    
    init(location: Coordinate, pizzasAvailable:Int = 10){
        self.location = location
        self.pizzasAvailable = pizzasAvailable
    }
    
    func isInRange(destination: Coordinate)-> Bool{
        if destination.distanceTo(coordinate: self.location) < 5000 {
            return true
        }
            else{
            return false
        }
        
    }
    
    func deliverPizzaTo(destination: Coordinate) -> Bool {
        if isInRange(destination: destination) && pizzasAvailable > 1 {
            pizzasAvailable -= 1
            return true
        }
        else {
            return false
        }
    }
    
    
    
    
    
    
}


//Create a method called isInRange(). This method takes one parameter, a Coordinate called destination, and returns true if the destination is no more than 5000 kilometers from the pizza delivery service.
//Create a method called deliverPizzaTo(). This method takes one parameter, a Coordinate called destination. If the destination is in range of the pizza delivery service, it subtracts one from the number of pizzas available and returns true. Otherwise, it simply returns false. If there are no pizzas available, it also returns false.
