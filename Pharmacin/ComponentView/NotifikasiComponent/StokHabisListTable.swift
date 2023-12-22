//
//  StokHabisListTable.swift
//  Pharmacin
//
//  Created by Devin Maleke on 07/12/23.
//

import SwiftUI

struct StokHabisListTable: View {
    var body: some View {
        HStack {

            Text("Alangsari Plus")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 200, alignment: .leading)
            Spacer()
            Text("xxxxxx")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 185, alignment: .leading)
            Spacer()
            Text("Lorem Ipsum")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 180, alignment: .leading)
            Spacer()
            Text("100")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 100, alignment: .leading)

        }
        .padding()
        .frame(width: UIScreen.main.bounds.size.width - 108)
    }
}

#Preview {
    StokHabisListTable()
}
