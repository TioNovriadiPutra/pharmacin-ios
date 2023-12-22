//
//  TambahPembelianList.swift
//  Pharmacin
//
//  Created by Devin Maleke on 14/12/23.
//

import SwiftUI

struct TambahPembelianList: View {
        var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .center, spacing: 20) {
                HStack {
                    Text("Item")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 315, alignment: .leading)
                    Spacer()
                    Text("Kadaluarsa")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 130, alignment: .center)
                    Spacer()
                    Text("QTY")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 100, alignment: .center)
                    Spacer()
                    Text("Harga")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 180, alignment: .center)
                    Spacer()
                    Text("Total")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 180, alignment: .center)
                    Spacer()
                    Text("Tindakan")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 80, alignment: .center)
                }
                .padding(.horizontal)
                .frame(height: 54)
                .frame(width: UIScreen.main.bounds.size.width - 120)
                
                .background(Color(red: 0.98, green: 0.98, blue: 0.99))
                .cornerRadius(10)
                
               
                
                   
                
                TambahPembelianListTable()
                
                Spacer()
            }
            .padding()
            .frame(height: 400)
            .frame(width: UIScreen.main.bounds.size.width - 105)
            
            .background(Color.white)
            .cornerRadius(12)
            
        }
        

    }
}

#Preview {
    TambahPembelianList()
}
