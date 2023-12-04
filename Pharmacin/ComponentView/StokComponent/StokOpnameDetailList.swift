//
//  StokOpnameDetailList.swift
//  Pharmacin
//
//  Created by Devin Maleke on 02/12/23.
//

import SwiftUI

struct StokOpnameDetailList: View {
    var body: some View {
        VStack {
            VStack{
                HStack {
                    Text("BatchID")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 182, alignment: .leading)
                    Spacer()
                    Text("Kadaluarsa")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 182, alignment: .leading)
                    Spacer()
                    Text("Tgl. Terakhir")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 182, alignment: .leading)
                    Spacer()
                    Text("Stok")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 182, alignment: .leading)
                    Spacer()
                    Text("Harga Beli")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 182, alignment: .leading)
                    Spacer()
                    Text("Tindakan")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 86, alignment: .leading)
                }
            }
            .padding()
            .frame(width: 1098, height: 54)
            .background(.white)
            .cornerRadius(10)
            
            
            
            VStack {
                StokOpnameListTable()
                StokOpnameListTable()
                StokOpnameListTable()
                
                Spacer()
            }
            .frame(width: 1098, height: 684)
            .background(.white)
            .cornerRadius(10)
        }
    }
}

#Preview {
    StokOpnameDetailList()
}
