//
//  PabrikanDetailView.swift
//  Pharmacin
//
//  Created by Devin Maleke on 07/12/23.
//

import SwiftUI

struct PabrikanDetailView: View {

    @Binding var showDetailPabrikView: Bool
    @State private var searchText: String = ""
    @State private var isJenisObat = true
    @State private var isPembelianObat = false
    @Binding var showInformasiPabrik : Bool
    
    
    let pabrikan: Pabrikan
    
    var body: some View {
        NavigationStack{
            GeometryReader{ geometry in
            ZStack{
                Color(red: 0.98, green: 0.98, blue: 0.99)
                    .ignoresSafeArea()
                
                VStack(alignment:.leading, spacing:14){
                    
                    HStack{
                        Button(action: {
                            showDetailPabrikView = false
                        }, label: {
                            Image("BackButton")
                        })
                        
                        
                        
                        Spacer()
                        
                        Text("\(pabrikan.clinic_name)")
                            .font(.custom("PlusJakartaSans-Medium", size: 16))
                            .foregroundColor(Color("RegularText"))
                        
                        
                        
                        
                        Spacer()
                        
                        Button{
                            showInformasiPabrik = true
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
                        
                        .frame(height: 44)
                        .frame(maxWidth: .infinity)
                        .background(Color(red: 0.94, green: 0.94, blue: 0.94))
                        .cornerRadius(10)
                        .padding(.trailing,70)
                        
                        
                        
                        
                        
                    }
                     
                    if isJenisObat {
                        JenisObatList()
                    } else if isPembelianObat {
                        PembelianObatPabrikanList()
                    }
                    
                    
                    Spacer()
                
                }.padding()
                
                
                
                Spacer()
                
                    .padding()
            }
        }
            }
        }
}

//struct Pabrikan_DetailView: PreviewProvider {
//    static var previews: some View {
//        PabrikanDetailView(showDetailPabrikView: .constant(true), showInformasiPabrik: .constant(true), pabrikan: Pabrikan(id: "1", namaPabrik: "PabrikA", email: "pabrikA@gmail.com", nomorTelepon: "123456788"))
//        PabrikanDetailView(showDetailPabrikView: .constant(true), showInformasiPabrik: .constant(true), pabrikan: Pabrikan(id: "1", namaPabrik: "PabrikA", email: "pabrikA@gmail.com", nomorTelepon: "123456788")).previewInterfaceOrientation(.landscapeRight)
//    }
//}
