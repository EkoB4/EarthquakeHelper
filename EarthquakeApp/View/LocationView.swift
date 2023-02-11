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
    @StateObject  var viewModal = LocationViewModal()
    var body: some View{
        ZStack(alignment: .bottom){
            Map(coordinateRegion:$viewModal.region, showsUserLocation: true)
                .ignoresSafeArea()
                .tint(.red)
            LocationButton(.currentLocation) {
                viewModal.requestLiveLocation()
            }.foregroundColor(.white).cornerRadius(20)
                .frame(width: 200,height: 100)
        }
    }
}

struct LocationView_Previews : PreviewProvider{
    static var previews: some View{
        LocationView()
    }
}
