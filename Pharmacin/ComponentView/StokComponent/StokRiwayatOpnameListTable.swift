//
//  StokRiwayatOpnameListTable.swift
//  Pharmacin
//
//  Created by Devin Maleke on 04/12/23.
//

import SwiftUI

struct StokRiwayatOpnameListTable: View {
    var body: some View {
        HStack {
            Spacer()
            Text("DD-MM-YYYY")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 200, alignment: .leading)
            Spacer()
            Text("Lorem Ipsum")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 200, alignment: .leading)
            Spacer()
            Text("90")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 200, alignment: .leading)
            Spacer()
            Text("100.000.000")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 200, alignment: .leading)
            Spacer()
            Button{
                print("Check")
            }label: {
                Image("CrossRed")
                    .resizable()
                    .frame(width: 32, height: 32)
            }
            .frame(width: 120, alignment: .center)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    StokRiwayatOpnameListTable()
}
