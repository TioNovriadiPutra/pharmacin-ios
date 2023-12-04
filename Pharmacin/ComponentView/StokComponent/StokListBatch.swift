//
//  StokListBatch.swift
//  Pharmacin
//
//  Created by Devin Maleke on 30/11/23.
//

import SwiftUI

struct StokListBatch: View {
    var body: some View {
        VStack {
            VStack{
                HStack {
                    Text("Item")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 200, alignment: .leading)
                    Spacer()
                    Text("Nama Pabrik")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 150, alignment: .leading)
                    Spacer()
                    Text("Batch ID")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 150, alignment: .leading)
                    Spacer()
                    Text("Kedaluwarsa")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 150, alignment: .leading)
                    Spacer()
                    Text("Stok Beli")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 150, alignment: .leading)
                    Spacer()
                    Text("Terjual")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 150, alignment: .leading)
                    Spacer()
                    Text("Stok")
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
                StokListTableBatch()
                StokListTableBatch()
                StokListTableBatch()
                StokListTableBatch()
                
                Spacer()
            }
            .frame(width: 1098, height: 684)
            .background(.white)
            .cornerRadius(10)
        }
    }
}

struct StokListBatch_Preview: PreviewProvider {
    static var previews: some View {
        StokListBatch()
        StokListBatch().previewInterfaceOrientation(.landscapeRight)
        
    }
}
