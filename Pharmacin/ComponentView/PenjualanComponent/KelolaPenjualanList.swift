//
//  KelolaPenjualanList.swift
//  Pharmacin
//
//  Created by Devin Maleke on 05/12/23.
//

import SwiftUI

struct KelolaPenjualanList: View {
    var body: some View {
        VStack (alignment: .leading){
            VStack{
                HStack {
                    Spacer()
                    Text("Tanggal")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 200, alignment: .leading)
                    Spacer()
                    Text("No Invoice")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 200, alignment: .leading)
                    Spacer()
                    Text("Nama Pelanggan")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 200, alignment: .leading)
                    Spacer()
                    Text("Total Pembelian")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 200, alignment: .leading)
                    Spacer()
                    Text("Tindakan")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 120, alignment: .center)
                    
                    Spacer()
                }
            }
            .padding()
            .frame(height: 54)
            .frame(width: UIScreen.main.bounds.size.width - 100)
            .background(.white)
            .cornerRadius(10)
            
            
            
            VStack {
                
                KelolaPenjualanListTable()
                KelolaPenjualanListTable()
                KelolaPenjualanListTable()
                
                
                Spacer()
            }
            .frame(height: 684)
            .frame(width: UIScreen.main.bounds.size.width - 100)
            .background(.white)
            .cornerRadius(10)
        }
    }
}

struct Kelola_PenjualanListView: PreviewProvider {
    static var previews: some View {
        KelolaPenjualanView(showTambahPenjualanView: .constant(true), showKelolaPenjualanView: .constant(true))
        KelolaPenjualanView(showTambahPenjualanView: .constant(true), showKelolaPenjualanView: .constant(true)).previewInterfaceOrientation(.landscapeRight)
    }
}
