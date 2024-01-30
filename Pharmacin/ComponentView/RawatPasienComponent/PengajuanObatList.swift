//
//  PengajuanObatList.swift
//  Pharmacin
//
//  Created by Devin Maleke on 30/01/24.
//

import SwiftUI

struct PengajuanObatList: View {
    var body: some View {
        VStack(spacing: 10){
            ObatNonRacikanList()
            
            ObatRacikanList()
        }.background(Color(red: 0.98, green: 0.98, blue: 0.99))
}
}

struct PengajuanObatList_Previews: PreviewProvider {
    static var previews: some View {
        PengajuanObatList().previewInterfaceOrientation(.landscapeRight)
    }
}
