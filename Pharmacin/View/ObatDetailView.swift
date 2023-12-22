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
    @Binding var showDetailObatView: Bool
    @Binding var showInformasiObat:Bool
    
    
    let obat:Obat
    
    var body: some View {
        NavigationStack{
            GeometryReader{ geometry in
                ZStack{
                    Color(red: 0.98, green: 0.98, blue: 0.99)
                        .ignoresSafeArea()
                     
                    HStack{
                    VStack(alignment:.leading, spacing:14){
                        
                        HStack{
                            Button(action: {
                                showDetailObatView = false
                            }){
                                Image("BackButton")
                            }
                            
                            
                            Spacer()
                            
                            Text("\(obat.namaObat)")
                                .font(.custom("PlusJakartaSans-Medium", size: 16))
                                .foregroundColor(Color("RegularText"))
                            
                            
                            
                            
                            Spacer()
                            
                            Button{
                               showInformasiObat = true
                            }label: {
                                Image("Info")
                            }
                            
                        }
                        .padding()
                        .background()
                        .frame(height: 44)
                        .cornerRadius(10)
                        .padding(.trailing,70)
                        
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
                            
                            .frame(height: 44)
                            .frame(maxWidth: .infinity)
                            .background(Color(red: 0.94, green: 0.94, blue: 0.94))
                            .cornerRadius(10)
                            .padding(.trailing,70)
                           
                            
                            
                            
                              
                            
                        }
                        
                        if isPembelianObatSelected {
                            PembelianObatList()
                        } else if isPenjualanObatSelected {
                            PenjualanObatList()
                            
                        }
                        
                        
                        
                        Spacer()
                        
                           
                    }.padding()
                    Spacer()
                }
                
                
                
                Spacer()
                
                    .padding()
            }
        }
            }
        }
}

struct Obat_DetailView: PreviewProvider {
    static var previews: some View {
        ObatDetailView(showDetailObatView: .constant(true), showInformasiObat: .constant(true), obat: Obat.obatSample)
        ObatDetailView(showDetailObatView: .constant(true), showInformasiObat: .constant(true), obat: Obat.obatSample).previewInterfaceOrientation(.landscapeRight)
    }
}

