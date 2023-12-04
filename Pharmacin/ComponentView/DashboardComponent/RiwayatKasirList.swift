//
//  RiwayatKasirList.swift
//  Pharmacin
//
//  Created by Devin Maleke on 25/11/23.
//

import SwiftUI

struct RiwayatKasirList: View {
    var body: some View {
        HStack{
            Text("DD-MM-YY")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 100, alignment: .leading)
            Spacer()
            Text("00.00")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 100, alignment: .leading)
            Spacer()
            Text("00.00")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 100, alignment: .leading)
            
        }.padding()
    }
}

#Preview {
    RiwayatKasirList()
}
