//
//  KelolaPenjualanView.swift
//  Pharmacin
//
//  Created by Devin Maleke on 04/12/23.
//

import SwiftUI

struct KelolaPenjualanView: View {
    @State private var searchText: String = ""
    @State private var isSemua = true
    @State private var isPenyesuaianPositif = false
    @State private var isPenyesuaianNegatif = false
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color(red: 0.98, green: 0.98, blue: 0.99)
                    .ignoresSafeArea()
                VStack{
                    HStack{
                        Text("Stok")
                            .font(.custom("PlusJakartaSans-Bold", size: 24))
                            .foregroundColor(Color("Subtitle"))
                        Text("/ Riwayat Opname")
                            .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                            .foregroundColor(Color("LightGray"))
                        Spacer()
                    
                        Button{
                           ("Tanggal")
                        }label: {
                            HStack{
                                Text("From: DD-MM-YYYY")
                                    .font(.custom("PlusJakartaSans-SemiBold", size: 14))
                                    .foregroundColor(Color("LG"))
                                Spacer()
                                Text("From: DD-MM-YYYY")
                                    .font(.custom("PlusJakartaSans-SemiBold", size: 14))
                                    .foregroundColor(Color("LG"))
                            }
                            .padding()
                            .frame(width: 331, height: 44)
                            .background(Color(.white))
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
                        .frame(width: 350, height: 44)
                        .background(Color(red: 0.94, green: 0.94, blue: 0.94))
                        .cornerRadius(10)
                        .padding()
                        
                    }
                    
                    HStack{
                        Button(action: {
                            isSemua = true
                            isPenyesuaianPositif = false
                            isPenyesuaianNegatif = false
                            
                            print("Semua")
                        }) {
                            Text("Semua")
                                .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                .foregroundColor(isSemua ? Color(.white) : Color("LightGray"))
                                .frame(width: 234, height: 44)
                                .background(isSemua ? Color("Green") : Color(Color(red: 0.94, green: 0.94, blue: 0.94)))
                                .cornerRadius(10)
                        }
                        .padding(.trailing,5)
                        
                        
                        Button(action: {
                            isSemua = false
                            isPenyesuaianPositif = true
                            isPenyesuaianNegatif = false
                            print("Per Batch")
                        }) {
                            Text("Per Batch")
                                .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                .foregroundColor(isPenyesuaianPositif ? Color(.white) : Color("LightGray"))
                                .frame(width: 414, height: 44)
                                .background(isPenyesuaianPositif ? Color("Green") : Color(Color(red: 0.94, green: 0.94, blue: 0.94)))
                                .cornerRadius(10)
                        }
                        
                        Button(action: {
                            isSemua = false
                            isPenyesuaianPositif = false
                            isPenyesuaianNegatif = true
                            print("Per Batch")
                        }) {
                            Text("Per Batch")
                                .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                .foregroundColor(isPenyesuaianNegatif ? Color(.white) : Color("LightGray"))
                                .frame(width: 418, height: 44)
                                .background(isPenyesuaianNegatif ? Color("Green") : Color(Color(red: 0.94, green: 0.94, blue: 0.94)))
                                .cornerRadius(10)
                        }
                    }
                    
                    StokOpnameList()
                    Spacer()
                }
                .padding()
            }
        }
    }
}

struct Kelola_PenjualanDetailView: PreviewProvider {
    static var previews: some View {
        KelolaPenjualanView()
        KelolaPenjualanView().previewInterfaceOrientation(.landscapeRight)
    }
}
