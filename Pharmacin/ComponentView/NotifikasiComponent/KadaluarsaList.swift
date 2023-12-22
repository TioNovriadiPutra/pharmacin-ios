//
//  KadaluarsaList.swift
//  Pharmacin
//
//  Created by Devin Maleke on 07/12/23.
//

import SwiftUI

struct KadaluarsaList: View {
    var body: some View {
        VStack (alignment:.leading){
            VStack{
                HStack {
                    Text("Nama Item")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 200, alignment: .leading)
                    Spacer()
                    Text("Batch")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 185, alignment: .leading)
                    Spacer()
                    Text("Tanggal Kadaluarsa")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 180, alignment: .leading)
                    Spacer()
                    Text("Stok")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 100, alignment: .leading)
                }
            }
            .padding()
            .frame(height: 54)
            .frame(width: UIScreen.main.bounds.size.width - 108)
            .background(.white)
            .cornerRadius(10)
            
            
            ScrollView{
                VStack {
                    
                    KadaluarsaListTable()
                    KadaluarsaListTable()
                    KadaluarsaListTable()
                    
                    
                    Spacer()
                }
                .frame(height: 684)
                .frame(width: UIScreen.main.bounds.size.width - 108)
                .background(.white)
                .cornerRadius(10)
                .padding(.top,1)
            }
            
        }
    }
}

#Preview {
    KadaluarsaList()
}
