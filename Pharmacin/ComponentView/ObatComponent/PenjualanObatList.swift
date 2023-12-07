//
//  PenjualanObatList.swift
//  Pharmacin
//
//  Created by Devin Maleke on 05/12/23.
//

import SwiftUI

struct PenjualanObatList: View {
    var body: some View {
        VStack {
            VStack{
                HStack {
                    Text("Tanggal")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 150, alignment: .leading)
                    Spacer()
                    Text("No Invoice")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 182, alignment: .leading)
                    Spacer()
                    Text("Nama Pelanggan")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 220, alignment: .leading)
                    Spacer()
                    Text("Jumlah")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 182, alignment: .leading)
                    Spacer()
                    Text("Harga Beli")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 182, alignment: .leading)
                    Spacer()
                    Text("Total")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 120, alignment: .leading)
                }
            }
            .padding()
            .frame(width: 1098, height: 54)
            .background(.white)
            .cornerRadius(10)
            
            
            
            VStack {
                PenjualanObatListTable()
                PenjualanObatListTable()
                PenjualanObatListTable()
                
                Spacer()
            }
            .frame(width: 1098, height: 684)
            .background(.white)
            .cornerRadius(10)
        }
    }
}

#Preview {
    PenjualanObatList()
}
