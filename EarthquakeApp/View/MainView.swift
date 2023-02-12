//
//  MainView.swift
//  EarthquakeApp
//
//  Created by Ekin Bacik on 13.02.2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack{
            VStack{
                BannerShape().padding(.bottom,300).overlay(content: {
                    Text("as").foregroundColor(.red)
                })
                    .ignoresSafeArea()
            }
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

struct BannerShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint.zero)
        path.addLine(to: CGPoint(x: rect.maxX, y: 0))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addQuadCurve(to: CGPoint(x: 0, y: rect.maxY), control: CGPoint(x: rect.midX, y: rect.maxY + 100))

        return path
    }
}
