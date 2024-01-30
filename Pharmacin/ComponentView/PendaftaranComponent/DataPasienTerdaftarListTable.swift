//
//  DataPasienTerdaftarListTable.swift
//  Pharmacin
//
//  Created by Devin Maleke on 03/01/24.
//

import SwiftUI

struct DataPasienTerdaftarListTable: View {
    var body: some View {
        HStack {
            Text("1")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 180, alignment: .leading)
            Spacer()
            Text("REG/20230910/0012")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 100, alignment: .leading)
            Spacer()
            Text("Muhammad Naufal Athallahardi Bin Dawood")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 130, alignment: .leading)
            Spacer()
            Text("0000000000")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 180, alignment: .leading)
            Spacer()
            Text("Perempuan")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 120, alignment: .leading)
            Spacer()
            Text("DD-MM-YYYY")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 120, alignment: .leading)
            Spacer()
           
            Button{
//                                    showSuccessPopup = true
            }label: {
                Text("Daftar")
                    .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                    .foregroundColor(.white)
                    .frame(width: 74, alignment: .center)
                    .frame(height: 32)
                    .background(Color("DarkBlue"))
                    .cornerRadius(10)
                    
                    
            }
               
            
            .frame(width: 100, alignment: .center)

        }
        .padding()
        
    }
}

#Preview {
    DataPasienTerdaftarListTable()
}

