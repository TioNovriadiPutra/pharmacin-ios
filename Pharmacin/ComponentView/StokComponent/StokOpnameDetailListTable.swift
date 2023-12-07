//
//  StokOpnameDetailListTable.swift
//  Pharmacin
//
//  Created by Devin Maleke on 02/12/23.
//

import SwiftUI

struct StokOpnameDetailListTable: View {
    var body: some View {
        HStack {
            Text("xxxxxx")
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
                .frame(width: 182, alignment: .center)
            Spacer()
            Text("100")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                    .foregroundColor(Color("RegularText"))
                    .background(
                        RoundedRectangle(cornerRadius: 8) // Adjust corner radius as needed
                            .stroke(Color(red: 0.93, green: 0.93, blue: 0.96))
                            .frame(width: 88, height: 38)
                    )
                    .frame(width: 182, alignment: .center)
                
                
            Spacer()
            Text("90")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 182, alignment: .center)
            Spacer()
            Button{
                print("Check")
            }label: {
                Image("CheckFillGreen")
                    .resizable()
                    .frame(width: 32, height: 32)
            }
            .frame(width: 86, alignment: .center)
            
        }
        .padding()
    }
}

#Preview {
    StokOpnameDetailListTable()
}
