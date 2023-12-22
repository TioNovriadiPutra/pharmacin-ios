//
//  StokListTable.swift
//  Pharmacin
//
//  Created by Devin Maleke on 29/11/23.
//

import SwiftUI

struct StokListTableItem: View {
    var body: some View {
        HStack {
            Text("ALANGSARI")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 150, alignment: .leading)
            Spacer()
            Text("Lorem Ipsum")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 182, alignment: .leading)
            Spacer()
            Text("Lorem Ipsum")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 182, alignment: .leading)
            Spacer()
            Text("222.000")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 182, alignment: .leading)
            Spacer()
            Text("222.000")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 182, alignment: .leading)
            Spacer()
            Text("100")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 86, alignment: .leading)
        }
        .padding()
    }
}
#Preview {
    StokListTableItem()
}
