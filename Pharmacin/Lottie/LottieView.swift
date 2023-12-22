//
//  SwiftUIView.swift
//  Pharmacin
//
//  Created by Devin Maleke on 15/12/23.
//

import Lottie
import SwiftUI

//struct LottieView: UIViewRepresentable {
//    let loopMode: LottieLoopMode
//
//    func updateUIView(_ uiView: UIViewType, context: Context) {
//        
//    }
//
//    func makeUIView(context: Context) -> Lottie.LottieAnimationView {
//        let animationView = LottieAnimationView(name: "CheckLottie")
//        animationView.play()
//        animationView.loopMode = loopMode
//        animationView.contentMode = .center
//        return animationView
//    }
//}

struct LottieView: UIViewRepresentable {
    let lottieFile: String
   // let loopMode: LottieLoopMode
 
    let animationView = LottieAnimationView()
 
    func makeUIView(context: Context) -> some UIView {
        let view = UIView(frame: .zero)
 
        animationView.animation = LottieAnimation.named(lottieFile)
        animationView.contentMode = .scaleAspectFit
        animationView.play()
        //animationView.loopMode = loopMode
 
        view.addSubview(animationView)
 
        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        animationView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
 
        return view
    }
 
    func updateUIView(_ uiView: UIViewType, context: Context) {
 
    }
}
