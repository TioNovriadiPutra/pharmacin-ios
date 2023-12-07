//
//  ObatDetailView.swift
//  Pharmacin
//
//  Created by Devin Maleke on 05/12/23.
//

import SwiftUI

struct ObatDetailView: View {
    @State private var searchText: String = ""
    @State private var isPembelianObatSelected = true
    @State private var isPenjualanObatSelected = false
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color(red: 0.98, green: 0.98, blue: 0.99)
                    .ignoresSafeArea()
                ScrollView{
                    VStack(alignment:.leading, spacing:10){
                        
                        HStack{
                            Image(systemName: "arrow.left").imageScale(.large)
                                .foregroundColor(Color("LightGray"))
                            
                            
                            Spacer()
                            
                            Text("ALANGSARI PLUS JERUK MANIS SACH 6S(7 Gr)")
                                .font(.custom("PlusJakartaSans-Medium", size: 16))
                                .foregroundColor(Color("RegularText"))
                            
                            
                            
                            
                            Spacer()
                            
                            Button{
                                ("Info Obat")
                            }label: {
                                Image("Info")
                            }
                            
                        }
                        .padding()
                        .background()
                        .frame(width: 1098, height: 44)
                        .cornerRadius(10)
                        
                        HStack{
                            Button(action: {
                                isPembelianObatSelected = true
                                isPenjualanObatSelected = false
                                print("Pembelian Obat")
                            }) {
                                Text("Pembelian Obat")
                                    .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                    .foregroundColor(isPembelianObatSelected ? Color(.white) : Color("LightGray"))
                                    .frame(width: 360, height: 44)
                                    .background(isPembelianObatSelected ? Color("Green") : Color(Color(red: 0.94, green: 0.94, blue: 0.94)))
                                    .cornerRadius(10)
                            }
                            .padding(.trailing,5)
                            
                            Button(action: {
                                isPenjualanObatSelected = true
                                isPembelianObatSelected = false
                                print("Penjualan Obat")
                            }) {
                                Text("Penjualan Obat")
                                    .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                    .foregroundColor(isPenjualanObatSelected ? Color(.white) : Color("LightGray"))
                                    .frame(width: 360, height: 44)
                                    .background(isPenjualanObatSelected ? Color("Green") : Color(Color(red: 0.94, green: 0.94, blue: 0.94)))
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
                            
                            
                            
                            
                            
                        }
                        
                        if isPembelianObatSelected {
                            PembelianObatList()
                        } else if isPenjualanObatSelected {
                            PenjualanObatList()
                            
                        }
                        
                        
                        
                        
                    }
                    
                    
                    
                    Spacer()
                }
                .padding()
            }
            }
        }
}

struct Obat_DetailView: PreviewProvider {
    static var previews: some View {
        ObatDetailView()
        ObatDetailView().previewInterfaceOrientation(.landscapeRight)
    }
}

