//
//  PabrikanDetailView.swift
//  Pharmacin
//
//  Created by Devin Maleke on 07/12/23.
//

import SwiftUI

struct PabrikanDetailView: View {
    @State private var searchText: String = ""
    @State private var isJenisObat = true
    @State private var isPembelianObat = false
    
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
                            
                            Text("Sanofi Devision, PT Combiphar")
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
                                isJenisObat = true
                                isPembelianObat = false
                                print("Jenis Obat")
                            }) {
                                Text("Jenis Obat")
                                    .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                    .foregroundColor(isJenisObat ? Color(.white) : Color("LightGray"))
                                    .frame(width: 360, height: 44)
                                    .background(isJenisObat ? Color("Green") : Color(Color(red: 0.94, green: 0.94, blue: 0.94)))
                                    .cornerRadius(10)
                            }
                            .padding(.trailing,5)
                            
                            Button(action: {
                                isPembelianObat = true
                                isJenisObat = false
                                print("Pembelian Obat")
                            }) {
                                Text("Pembelian Obat")
                                    .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                    .foregroundColor(isPembelianObat ? Color(.white) : Color("LightGray"))
                                    .frame(width: 360, height: 44)
                                    .background(isPembelianObat ? Color("Green") : Color(Color(red: 0.94, green: 0.94, blue: 0.94)))
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
                        
                        if isJenisObat {
                            JenisObatList()
                        } else if isPembelianObat {
                            PembelianObatPabrikanList()
                            
                        }
                        
                        
                        
                        
                    }
                    
                    
                    
                    Spacer()
                }
                .padding()
            }
            }
        }
}

struct Pabrikan_DetailView: PreviewProvider {
    static var previews: some View {
        PabrikanDetailView()
        PabrikanDetailView().previewInterfaceOrientation(.landscapeRight)
    }
}
