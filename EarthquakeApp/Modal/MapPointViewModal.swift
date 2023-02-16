//
//  MapPointViewModal.swift
//  EarthquakeApp
//
//  Created by Ekin Bacik on 13.02.2023.
//

import Foundation

class MapPointViewModal :ObservableObject{
    let places = [
        PointMap(name: "Test", latitude: 37.334648, longtitude: -122.0111607),
        PointMap(name: "Test2", latitude: 37.333905, longtitude: -122.0070235)
    ]
}
