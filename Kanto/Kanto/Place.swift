//
//  Place.swift
//  Kanto
//
//  Created by Кирилл Комаровский on 06.06.2021.
//

import Foundation
import UIKit
import MapKit

class City: NSObject, MKAnnotation{
    var coordinate: CLLocationCoordinate2D
    var name: String
    var title: String?
    
    init(name: String, title: String?, coordinate: CLLocationCoordinate2D) {
        self.name = name
        self.title = title
        self.coordinate = coordinate
    }
}

class ModelCity {
    var cities: [City]
    
    init() {
        let city1 = City(name: "Paris", title: "Paris", coordinate: CLLocationCoordinate2D(latitude: 37.765834, longitude: -122.403417))
        let city2 = City(name: "Spb", title: "Spb", coordinate: CLLocationCoordinate2D(latitude: 37.762834, longitude: -122.401417))
        let city3 = City(name: "Berlin", title: "Berlin", coordinate: CLLocationCoordinate2D(latitude: 37.715834, longitude: -122.101417))
        let city4 = City(name: "Stary Oskol", title: "Stary Oskol", coordinate: CLLocationCoordinate2D(latitude: 38.715834, longitude: -122.101417))
        let arrCities = [city1, city2, city3, city4]
            
        cities = arrCities
    }
    
    
}
