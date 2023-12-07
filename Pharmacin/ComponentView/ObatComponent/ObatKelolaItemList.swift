//
//  ObatKelolaItemList.swift
//  Pharmacin
//
//  Created by Devin Maleke on 05/12/23.
//

import SwiftUI

struct ObatKelolaItemList: View {
    var body: some View {
        VStack {
            VStack{
                HStack {
                    Spacer()
                    Text("Nama Item")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 200, alignment: .leading)
                    Spacer()
                    Text("Nama Generik")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 180, alignment: .leading)
                    Spacer()
                    Text("Kategori")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 120, alignment: .leading)
                    Spacer()
                    Text("Rak")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 70, alignment: .leading)
                    Spacer()
                    Text("Harga Beli")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 140, alignment: .leading)
                    Spacer()
                    Text("Harga Jual")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 140, alignment: .leading)
                    Spacer()
                    Text("Takaran")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 100, alignment: .leading)
                    Spacer()
                    Text("Tindakan")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 80, alignment: .center)
                    
                    Spacer()
                }
            }
            .padding()
            .frame(width: 1098, height: 54)
            .background(.white)
            .cornerRadius(10)
            
            
            
            VStack {
                
                ObatKelolaItemListTable()
                ObatKelolaItemListTable()
                ObatKelolaItemListTable()
                
                
                Spacer()
            }
            .frame(width: 1098, height: 684)
            .background(.white)
            .cornerRadius(10)
        }
    }
}

#Preview {
    ObatKelolaItemList()
}
