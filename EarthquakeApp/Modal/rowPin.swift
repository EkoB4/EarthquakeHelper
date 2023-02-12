//
//  rowPin.swift
//  EarthquakeApp
//
//  Created by Ekin Bacik on 13.02.2023.
//

import Foundation
import SwiftUI

struct rowPin : View{
    let title: String
    var body: some View{
        VStack{
            Text(title)
            
            
            Image(systemName: "mappin.circle.fill")
                .font(.title)
                .foregroundColor(.red)
            
                
            Image(systemName: "arrowtriangle.down.fill")
                .foregroundColor(.red)
        }
    }
}


