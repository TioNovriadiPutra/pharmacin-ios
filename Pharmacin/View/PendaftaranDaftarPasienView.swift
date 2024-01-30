//
//  PendaftaranDaftarPasienView.swift
//  Pharmacin
//
//  Created by Devin Maleke on 03/01/24.
//

import SwiftUI

struct PendaftaranDaftarPasienView: View {
    @State private var searchText: String = ""
    @State private var isDaftarPasien = true
    @State private var isDataPasienTerdaftar = false

        var body: some View {
            NavigationStack{
                GeometryReader { geometry in
                ZStack{
                    Color(red: 0.98, green: 0.98, blue: 0.99)
                        .ignoresSafeArea()
                    
                        VStack(alignment: .leading, spacing: 12){
                            HStack{
                                Text("Pendaftaran")
                                    .font(.custom("PlusJakartaSans-Bold", size: 24))
                                    .foregroundColor(Color("Subtitle"))
                                Text("/ Daftar Pasien")
                                    .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                    .foregroundColor(Color("LightGray"))
                                
                                
                                Spacer()
                                
                                Button{
//                                    showSuccessPopup = true
                                }label: {
                                    Text("Daftar Pasien Baru")
                                        .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                        .foregroundColor(.white)
                                        .frame(width: 225, alignment: .center)
                                        .frame(height: 44)
                                        .background(Color("Green"))
                                        .cornerRadius(10)
                                        .padding(.trailing,70)
                                        
                                }
                                
                            }
                            
                            HStack{
                                Button(action: {
                                    isDaftarPasien = true
                                    isDataPasienTerdaftar = false
                                    print("Kadaluarsa")
                                }) {
                                    Text("Daftar Antrian")
                                        .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                        .foregroundColor(isDaftarPasien ? Color(.white) : Color("LightGray"))
                                        .frame(width: 360, height: 44)
                                        .background(isDaftarPasien ? Color("Green") : Color(Color(red: 0.94, green: 0.94, blue: 0.94)))
                                        .cornerRadius(10)
                                }
                                
                                
                                Button(action: {
                                    isDataPasienTerdaftar = true
                                    isDaftarPasien = false
                                    print("Stok Habis")
                                }) {
                                    Text("Data Pasien Terdaftar")
                                        .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                        .foregroundColor(isDataPasienTerdaftar ? Color(.white) : Color("LightGray"))
                                        .frame(width: 360, height: 44)
                                        .background(isDataPasienTerdaftar ? Color("DarkBlue") : Color(Color(red: 0.94, green: 0.94, blue: 0.94)))
                                        .cornerRadius(10)
                                }
                                
                                 
                                HStack {
                                    Image(systemName: "magnifyingglass")
                                        .foregroundColor(.gray)
                                        .padding(.leading, 8)
                                    
                                    TextField("Search here...", text: $searchText)
                                        .autocapitalization(.none)
                                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                                    
                                    
                                }
                                
                                .frame(height: 44)
                                .background(Color(red: 0.94, green: 0.94, blue: 0.94))
                                .cornerRadius(10)
                                .padding(.trailing,70)
                            }
                            
                            if isDaftarPasien {
                                DaftarPasienList()
                            } else if isDataPasienTerdaftar {
                                DataPasienTerdaftarList()
 
                            }
                            
                           
                                
                            Spacer()
                            

                        }
                        
                        
                        .padding()
                    

                }
            }
            }
        }
        
    
}

struct DaftarPasien_Previews: PreviewProvider {
    static var previews: some View {
        PendaftaranDaftarPasienView()
        PendaftaranDaftarPasienView().previewInterfaceOrientation(.landscapeRight)
        
    }
}
