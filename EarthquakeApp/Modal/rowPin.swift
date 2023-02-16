//
//  rowPin.swift
//  EarthquakeApp
//
//  Created by Ekin Bacik on 13.02.2023.
//

import Foundation
import SwiftUI
import CoreLocationUI
struct RowPin : View{
    let title: String
    @State private var showText = true
    var body: some View{
        VStack{
            VStack{
                Text(title)
                Image(systemName: "mappin.circle.fill")
                    .font(.title)
                    .foregroundColor(Color("Blue2"))
                
                Image(systemName: "arrowtriangle.down.fill")
                    .foregroundColor(.red)
                    .offset(y:0.5)
            }
        }
        
    }
}


