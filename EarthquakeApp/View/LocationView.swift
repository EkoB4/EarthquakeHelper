//
//  LocationView.swift
//  EarthquakeApp
//
//  Created by Ekin Bacik on 12.02.2023.
//
import CoreLocationUI
import Foundation
import SwiftUI
import MapKit
struct LocationView : View {
    private let places = [
        PointMap(name: "Test", latitude: 37.334648, longtitude: -122.0111607)
    ]
    @StateObject  var viewModal = LocationViewModal()
    var body: some View{
        ZStack(alignment: .bottom){
            Map(coordinateRegion:$viewModal.region,showsUserLocation: true, annotationItems: places){ place in
                MapMarker(coordinate: place.PinCoordinate)
            }
                .ignoresSafeArea()
                .tint(.red)
            LocationButton(.currentLocation) {
                viewModal.requestLiveLocation()
            }.foregroundColor(.white).cornerRadius(20)
                .tint(Color("Blue3"))
        }
    }
}

struct LocationView_Previews : PreviewProvider{
    static var previews: some View{
        LocationView()
    }
}
