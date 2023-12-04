//
//  InvoiceListPembelian.swift
//  Pharmacin
//
//  Created by Devin Maleke on 25/11/23.
//

import SwiftUI

struct InvoiceListPembelian: View {
    var body: some View {
        HStack{
            Text("0000")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 200, alignment: .leading)
            Spacer()
            Text("Lorem Ipsum")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 150, alignment: .leading)
            
        }.padding()
    }
}

#Preview {
    InvoiceListPembelian()
}
