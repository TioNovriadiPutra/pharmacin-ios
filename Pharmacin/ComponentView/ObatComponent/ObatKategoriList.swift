//
//  ObatKategoriList.swift
//  Pharmacin
//
//  Created by Devin Maleke on 05/12/23.
//

import SwiftUI

struct ObatKategoriList: View {
    var body: some View {
        VStack {
            VStack{
                HStack {
                    Text("ID")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 200, alignment: .center)
                    Spacer()
                    Text("Title")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 200, alignment: .leading)
                    Spacer()
                    Text("Tindakan")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 120, alignment: .center)
                }
            }
            .padding()
            .frame( height: 54)
            .frame(width: UIScreen.main.bounds.size.width - 100)
            .background(.white)
            .cornerRadius(10)
            
            
            
            VStack {
                
                ObatKategoriListTable()
                ObatKategoriListTable()
                ObatKategoriListTable()
                
                
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
    ObatKategoriList()
}
