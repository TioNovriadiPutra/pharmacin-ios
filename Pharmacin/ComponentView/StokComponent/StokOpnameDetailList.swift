//
//  StokOpnameDetailList.swift
//  Pharmacin
//
//  Created by Devin Maleke on 02/12/23.
//

import SwiftUI

struct StokOpnameDetailList: View {
    var body: some View {
        VStack (alignment: .leading){
            VStack{
                HStack {
                    Text("BatchID")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 150, alignment: .leading)
                    Spacer()
                    Text("Kadaluarsa")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 182, alignment: .leading)
                    Spacer()
                    Text("Stok Terdata")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 182, alignment: .center)
                    Spacer()
                    Text("Stok Fisik")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 182, alignment: .center)
                    Spacer()
                    Text("Selisih")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 182, alignment: .center)
                    Spacer()
                    Text("Stok")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 86, alignment: .center)
                }
            }
            .padding()
            .frame(height: 54)
            .frame(width: UIScreen.main.bounds.size.width - 100)
            .background(.white)
            .cornerRadius(10)
            
            
            
            VStack {
                
                StokOpnameDetailListTable()
                StokOpnameDetailListTable()
                StokOpnameDetailListTable()
                
                Spacer()
            }
            .frame(height: 684)
            .frame(width: UIScreen.main.bounds.size.width - 100)
            .background(.white)
            .cornerRadius(10)
        }
    }
}

#Preview {
    StokOpnameDetailList()
}
