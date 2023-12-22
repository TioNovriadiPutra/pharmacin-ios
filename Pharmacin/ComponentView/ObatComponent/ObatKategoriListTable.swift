//
//  ObatKategoriListTable.swift
//  Pharmacin
//
//  Created by Devin Maleke on 05/12/23.
//

import SwiftUI

struct ObatKategoriListTable: View {
    var body: some View {
        HStack {
           
            Text("00000")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 200, alignment: .center)
            Spacer()
            Text("Alangsari Plus")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 200, alignment: .leading)
            Spacer()
            
            
            HStack{
                Button{
                    print("Check")
                }label: {
                    Image("EditYellow")
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
            .frame(width: 120, alignment: .center)
           
        }
        .padding()
    }
}

#Preview {
    ObatKategoriListTable()
}
