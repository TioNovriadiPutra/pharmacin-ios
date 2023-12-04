//
//  PenjualanTerakhirCart.swift
//  Pharmacin
//
//  Created by Devin Maleke on 25/11/23.
//

import SwiftUI

struct PenjualanTerakhirCart: View {
    var body: some View {
        VStack{
            VStack{
                HStack{
                    Text("Penjualan Terakhir")
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
                    Text("No Invoice")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 150, alignment: .leading)
                    Spacer()
                    Text("Total")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 150, alignment: .leading)
                }
                .padding()
                .frame(width: 514, height: 54)
                .background(Color(red: 0.98, green: 0.98, blue: 0.99))
                .cornerRadius(10)
                
                InvoiceList()
                InvoiceList()
                InvoiceList()
                InvoiceList()
                InvoiceList()
                InvoiceList()
                InvoiceList()
                Spacer()
                
            }
            .padding()
            .frame(width: 542, height: 622)
            .background(Color(.white))
            .cornerRadius(10)
        }
    }
}

#Preview {
    PenjualanTerakhirCart()
}
