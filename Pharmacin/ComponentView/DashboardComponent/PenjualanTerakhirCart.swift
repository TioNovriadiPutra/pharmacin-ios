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
                    Spacer()
                    Button{
                        print("Lihat semua penjualan")
                    }label: {
                        Text("Lihat Semua >>")
                            .foregroundColor(Color(red: 0.34, green: 0.75, blue: 0.39))
                    }
                }
                
                HStack{
                    Text("No Invoice")
                        .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                    Spacer()
                    Text("Total")
                        .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
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
