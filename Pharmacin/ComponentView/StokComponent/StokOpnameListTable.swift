//
//  StokOpnameListTable.swift
//  Pharmacin
//
//  Created by Devin Maleke on 02/12/23.
//

import SwiftUI

struct StokOpnameListTable: View {
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
            Text("DD-MM-YYYY")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 182, alignment: .leading)
            Spacer()
            Text("100")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 182, alignment: .leading)
            Spacer()
            Text("222.000.000")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 182, alignment: .leading)
            Spacer()
            Button{
                print("Check")
            }label: {
                Image("CheckBlue")
                    .resizable()
                    .frame(width: 32, height: 32)
            }
            .frame(width: 86, alignment: .center)
            
        }
        .padding()
    }
}

#Preview {
    StokOpnameListTable()
}
