//
//  DaftarAntrianList.swift
//  Pharmacin
//
//  Created by Devin Maleke on 03/01/24.
//

import SwiftUI

struct DaftarPasienList: View {
    var body: some View {
        VStack {
            VStack{
                HStack {
                    Text("Antrian")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 60, alignment: .leading)
                    Spacer()
                    Text("No. Registrasi")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 180, alignment: .leading)
                    Spacer()
                    Text("Nama Pasien")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 180, alignment: .leading)
                    Spacer()
                    Text("No. RM")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 120, alignment: .leading)
                    Spacer()
                    Text("J. Kelamin")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 100, alignment: .leading)
                    Spacer() 
                    Text("Tgl. Daftar")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 100, alignment: .leading)
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
                
                DaftarPasienListTable()
                DaftarPasienListTable()
                DaftarPasienListTable()
                
                
                Spacer()
            }
            .frame(height: 684)
            .frame(width: UIScreen.main.bounds.size.width - 100)
            .background(.white)
            .cornerRadius(10)
        }
    }
}

struct DaftarPasienList_Previews: PreviewProvider {
    static var previews: some View {
        DaftarPasienList()
        DaftarPasienList().previewInterfaceOrientation(.landscapeRight)
        
    }
}

