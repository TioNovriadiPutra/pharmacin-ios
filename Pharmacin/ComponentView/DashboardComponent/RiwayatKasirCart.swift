//
//  RiwayatKasirCart.swift
//  Pharmacin
//
//  Created by Devin Maleke on 25/11/23.
//

import SwiftUI

struct RiwayatKasirCart: View {
    var body: some View {
        VStack{
            VStack{
                HStack{
                    Text("Riwayat Kasir")
                        .font(.custom("PlusJakartaSans-semiBold", size: 18))
                        .foregroundColor(Color("Subtitle"))
                    Spacer()
                    Button{
                        print("Lihat semua penjualan")
                    }label: {
                        Text("Lihat Semua >>")
                            .font(.custom("PlusJakartaSans-semiBold", size: 14))
                            .foregroundColor(Color("Green"))
                    }
                }
                
                HStack{
                    Text("Tanggal")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 100, alignment: .leading)
                    Spacer()
                    Text("Buka")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 100, alignment: .leading)
                    Spacer()
                    Text("Tutup")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 100, alignment: .leading)
                }
                .padding()
                .frame(width: 514, height: 54)
                .background(Color(red: 0.98, green: 0.98, blue: 0.99))
                .cornerRadius(10)
                
                RiwayatKasirList()
                RiwayatKasirList()
                RiwayatKasirList()
                
                Spacer()
                
            }
            .padding()
            .frame(width: 542, height: 304)
            .background(Color(.white))
            .cornerRadius(10)
        }
    }
}

#Preview {
    RiwayatKasirCart()
}
