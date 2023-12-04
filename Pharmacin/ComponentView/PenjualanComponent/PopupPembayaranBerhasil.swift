//
//  SwiftUIView.swift
//  Pharmacin
//
//  Created by Devin Maleke on 02/12/23.
//

import SwiftUI

struct PopupBerhasil: View {
    var body: some View {
        VStack{
            HStack{
                
                Image(systemName: "arrow.left").imageScale(.large)
                    .foregroundColor(Color("LightGray"))
                    .padding(.leading,20)
                
                Text("Konfirmasi Penjualan")
                    .font(.custom("PlusJakartaSans-Bold", size: 24))
                    .padding(.leading,100)
                
                Spacer()
            }
            
            Text("Total Pembelian")
                .font(.custom("PlusJakartaSans-medium", size: 16))
                .foregroundColor(Color("LightGray"))
                .padding()
            Text("9999")
                .font(.custom("PlusJakartaSans-Bold", size: 24))
            
            Text("Tunai")
                .font(.custom("PlusJakartaSans-medium", size: 16))
                .foregroundColor(Color("LightGray"))
                .padding()
            Text("9999")
                .font(.custom("PlusJakartaSans-Bold", size: 24))
            

            
            Text("Kembalian")
                .font(.custom("PlusJakartaSans-medium", size: 16))
                .foregroundColor(Color("LightGray"))
                .padding()
            Text("9999")
                .font(.custom("PlusJakartaSans-Bold", size: 24))
            
            Divider()
            
            Button{
               ("Test")
            }label: {
                Text("Tambah Penjualan")
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
    PopupBerhasil()
}
