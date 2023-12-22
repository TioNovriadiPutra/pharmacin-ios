//
//  ManajemenRiwayatKasirList.swift
//  Pharmacin
//
//  Created by Devin Maleke on 19/12/23.
//

import SwiftUI

struct ManajemenRiwayatKasirList: View {
    var body: some View {
        VStack {
            VStack{
                HStack {
                    Text("Tanggal")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 200, alignment: .leading)
                    Spacer()
                    Text("Nama")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 200, alignment: .leading)
                    Spacer()
                    Text("Buka")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 200, alignment: .leading)
                    Spacer()
                    Text("Tutup")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 100, alignment: .leading)
                   
                   
                    
                    
                }
            }
            .padding()
            .frame(height: 54)
            .frame(width: UIScreen.main.bounds.size.width - 100)
            .background(.white)
            .cornerRadius(10)
            
            
            
            VStack {
                
                ManajemenRiwayattKasirListTable()
                ManajemenRiwayattKasirListTable()
                ManajemenRiwayattKasirListTable()
                
                
                Spacer()
            }
            .frame(maxHeight: .infinity)
            .frame(width: UIScreen.main.bounds.size.width - 100)
            .background(.white)
            .cornerRadius(10)
        }
    }
}

struct ManajemenRiwayatKasirList_Preview: PreviewProvider {
    static var previews: some View {
        ManajemenRiwayatKasirView()
        ManajemenRiwayatKasirView().previewInterfaceOrientation(.landscapeRight)
        
    }
}
