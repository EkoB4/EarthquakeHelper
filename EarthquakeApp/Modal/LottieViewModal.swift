//
//  LottieView.swift
//  EarthquakeApp
//
//  Created by Ekin Bacik on 10.02.2023.
//

import Foundation
import Lottie
import SwiftUI

struct LottieViewModal : UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView(frame: .zero)
        animationView.animation = LottieAnimation.named(lottie)
        animationView.contentMode = .scaleAspectFit
        animationView.play()
        
        view.addSubview(animationView)
        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        animationView.widthAnchor.constraint(equalTo:view.widthAnchor).isActive = true
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        //
    }
    
    
    let lottie : String
    let animationView = LottieAnimationView()
    
}
/*         animationView.animation = Animation.named("animationName") ->    animationView.animation = LottieAnimation.named("animationName")
           Duzeltilmis 
*/
