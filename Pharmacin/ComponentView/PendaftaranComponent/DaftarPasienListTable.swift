//
//  DaftarAntrianListTable.swift
//  Pharmacin
//
//  Created by Devin Maleke on 03/01/24.
//

import SwiftUI

struct DaftarPasienListTable: View {
    var body: some View {
        HStack {
            Text("1")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 60, alignment: .leading)
            Spacer()
            Text("REG/20230910/0012")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 180, alignment: .leading)
            Spacer()
            Text("Muhammad Naufal Athallahardi Bin Dawood")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 180, alignment: .leading)
            Spacer()
            Text("0000000000")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 120, alignment: .leading)
            Spacer()
            Text("Perempuan")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 100, alignment: .leading)
            Spacer()
            Text("DD-MM-YYYY")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 100, alignment: .leading)
            Spacer()
            HStack{
                Button{
                    print("periksa")
                }label: {
                    Image("CheckFillGreen")
                        .resizable()
                        .frame(width: 32, height: 32)
                        
                }
                Button{
                    print("Check")
                }label: {
                    Image("CrossRed")
                        .resizable()
                        .frame(width: 32, height: 32)
                }
            }
            .frame(width: 100, alignment: .center)

        }
        .padding()
        
    }
}

#Preview {
    DaftarPasienListTable()
}
