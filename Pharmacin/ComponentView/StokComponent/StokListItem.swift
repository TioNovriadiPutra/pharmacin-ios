//
//  StokList.swift
//  Pharmacin
//
//  Created by Devin Maleke on 29/11/23.
//

import SwiftUI

struct StokListItem: View {
    var body: some View {
        VStack {
            VStack{
                HStack {
                    Text("Item")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 150, alignment: .leading)
                    Spacer()
                    Text("Nama Pabrik")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 182, alignment: .leading)
                    Spacer()
                    Text("Kategori")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 182, alignment: .leading)
                    Spacer()
                    Text("Harga Beli")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 182, alignment: .leading)
                    Spacer()
                    Text("Harga Jual")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 182, alignment: .leading)
                    Spacer()
                    Text("Stok")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 86, alignment: .leading)
                }
            }
            .padding()
            .frame(height: 54)
            .frame(width: UIScreen.main.bounds.size.width - 100)
            .background(.white)
            .cornerRadius(10)
            
            
            
            VStack {
                StokListTableItem()
                StokListTableItem()
                StokListTableItem()
                StokListTableItem()
                
                Spacer()
            }
            .frame(height: 684)
            .frame(width: UIScreen.main.bounds.size.width - 100)
            .background(.white)
            .cornerRadius(10)
        }
    }
}

struct StokListItem_Preview: PreviewProvider {
    static var previews: some View {
        StokView()
        StokView().previewInterfaceOrientation(.landscapeRight)
        
    }
}
