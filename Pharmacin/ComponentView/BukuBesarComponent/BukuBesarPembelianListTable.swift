//
//  BukuBesarPembelianListTable.swift
//  Pharmacin
//
//  Created by Devin Maleke on 08/12/23.
//

import SwiftUI

struct BukuBesarPembelianListTable: View {
    var body: some View {
        HStack {

            Text("DD-MM-YYYY")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 200, alignment: .leading)
            Spacer()
            Text("8288373748")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 185, alignment: .leading)
            Spacer()
            Text("Lorem Ipsum")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 180, alignment: .leading)
            Spacer()
            Text("100.000.000")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 140, alignment: .leading)

        }
        .padding()
    }
}

#Preview {
    BukuBesarPembelianListTable()
}
