//
//  KonfirmasiPembelianPopUp.swift
//  Pharmacin
//
//  Created by Devin Maleke on 07/12/23.
//

import SwiftUI

struct KonfirmasiPembelianPopUp: View {
    @Binding var showKonfirmasiPembelianPopUp : Bool
    @Binding var showKelolaPembelian : Bool
    
    var body: some View {
        VStack{
            HStack{
                Button(action: {
                    showKonfirmasiPembelianPopUp = false
                }, label: {
                    Image("BackButton")
                        .padding(.leading,20)
                })
              
                
                Text("Konfirmasi Pembelian")
                    .font(.custom("PlusJakartaSans-Bold", size: 24))
                    .padding(.leading,100)
                
                Spacer()
            }
            Spacer()
            Text("Jumlah Item")
                .font(.custom("PlusJakartaSans-medium", size: 16))
                .foregroundColor(Color("LightGray"))
                .padding()
            Text("3")
                .font(.custom("PlusJakartaSans-Bold", size: 24))
                .padding(.bottom,40)
            
            Text("Total Pembelian")
                .font(.custom("PlusJakartaSans-medium", size: 16))
                .foregroundColor(Color("LightGray"))
                .padding()
            Text("Rp.100.000.000")
                .font(.custom("PlusJakartaSans-Bold", size: 24))
            
            Spacer()
            
            Divider()
                .padding()
            
            Button{
               showKelolaPembelian = true
            }label: {
                Text("Tambah Pembelian")
                    .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                    .foregroundColor(.white)
                    .frame(width: 450, height: 44)
                    .frame(height: 44)
                    .background(Color("Green"))
                    .cornerRadius(10)
                    .padding(.top,20)
            }
            Spacer()
        }
        .padding(.top,40)
        .frame(width: 542, height: 522)
        .background(.white)
        .cornerRadius(10)

    }
}

#Preview {
    KonfirmasiPembelianPopUp(showKonfirmasiPembelianPopUp: .constant(true), showKelolaPembelian: .constant(true))
}
