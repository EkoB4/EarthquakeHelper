//
//  ContentView.swift
//  EarthquakeApp
//
//  Created by Ekin Bacik on 7.02.2023.
//

import SwiftUI
struct ContentView: View {
    let displayPdf : URL
    var body: some View {
        VStack{
            PDFViewRepresentable(documentUrl: programUrl)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(displayPdf: programUrl)
    }
}
