//
//  SplashScreenView.swift
//  Pharmacin
//
//  Created by Devin Maleke on 18/12/23.
//

import SwiftUI

struct SplashScreenView: View {
    var body: some View {
        Image("SplashScreen")
            .resizable()
            .frame(maxWidth: .infinity)
            .frame(maxHeight: .infinity)
            .ignoresSafeArea()
            
    }
}

struct SplashScreen_Preview: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
        SplashScreenView().previewInterfaceOrientation(.landscapeRight)
        
    }
}
