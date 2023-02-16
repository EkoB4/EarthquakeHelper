//
//  SplashScreen.swift
//  EarthquakeApp
//
//  Created by Ekin Bacik on 13.02.2023.
//

import SwiftUI
import Lottie
struct SplashScreen: View {
    @State private var isActive = false
    var body: some View {
        
        if isActive{
            MainView()
        }else{
            VStack{
                ZStack{
                    LottieViewModal(lottie: "Istanbul")
                }.background {
                    Color("Blue2").ignoresSafeArea()
                }
            }.onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5.5){/*5sn boyunca arka planda simule eder*/
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}
struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
