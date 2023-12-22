//
//  ManajemenRiwayattKasirListTable.swift
//  Pharmacin
//
//  Created by Devin Maleke on 19/12/23.
//

import SwiftUI

struct ManajemenRiwayattKasirListTable: View {
    var body: some View {
        HStack {
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
            Text("00.00")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 200, alignment: .leading)
            Spacer()
            Text("00.00")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 100, alignment: .leading)
            
        }
        .padding()
    }
}

struct ManajemenRiwayatKasirListTable_Preview: PreviewProvider {
    static var previews: some View {
        ManajemenRiwayatKasirView()
        ManajemenRiwayatKasirView().previewInterfaceOrientation(.landscapeRight)
        
    }
}
