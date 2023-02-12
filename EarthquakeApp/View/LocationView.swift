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
    @State var pinModal = MapPointViewModal()
    @StateObject  var viewModal = LocationViewModal()
    var body: some View{
        ZStack(alignment: .bottom){
            Map(coordinateRegion:$viewModal.region,showsUserLocation: true, annotationItems: pinModal.places){ place in
                MapAnnotation(coordinate: place.PinCoordinate) {
                    rowPin(title: place.name)
                }
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
