//
//  DataPasienTerdaftarList.swift
//  Pharmacin
//
//  Created by Devin Maleke on 03/01/24.
//

import SwiftUI

struct DataPasienTerdaftarList: View {
    var body: some View {
        VStack {
            VStack{
                HStack {
                    Text("Nama Pasien")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 180, alignment: .leading)
                    Spacer()
                    Text("No. RM")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 100, alignment: .leading)
                    Spacer()
                    Text("No. Handphone")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 130, alignment: .leading)
                    Spacer()
                    Text("Alamat")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 180, alignment: .leading) 
                    Spacer()
                    Text("J. Kelamin")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 120, alignment: .leading)
                    Spacer()
                    Text("Tgl. Lahir")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 120, alignment: .leading)
                    Spacer()
                    Text("Tindakan")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 100, alignment: .center)
                }
            }
            .padding()
            .frame(height: 54)
            .frame(width: UIScreen.main.bounds.size.width - 100)
            .background(.white)
            .cornerRadius(10)
            
            
            
            VStack {
                
                DataPasienTerdaftarListTable()
                DataPasienTerdaftarListTable()
                DataPasienTerdaftarListTable()
                
                
                Spacer()
            }
            .frame(height: 684)
            .frame(width: UIScreen.main.bounds.size.width - 100)
            .background(.white)
            .cornerRadius(10)
        }
    }
}

struct DataPasienTerdaftarList_Previews: PreviewProvider {
    static var previews: some View {
        DataPasienTerdaftarList()
        DataPasienTerdaftarList().previewInterfaceOrientation(.landscapeRight)
        
    }
}

