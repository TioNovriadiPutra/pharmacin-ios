//
//  TambahObatPopUp.swift
//  Pharmacin
//
//  Created by Devin Maleke on 05/12/23.
//

import SwiftUI


struct TambahObatPopUp: View {
    @State private var namaObat: String = ""
    @State private var namaGenerik: String = ""
    @State private var takaran: String = ""
    @State private var kategori: String = ""
    @State private var rak: String = ""
    @State private var pabrikan: String = ""
    @State private var hargaBeliPabrikan: String = ""
    @State private var hargaJual: String = ""
    
    @State private var selectionKategori = ""
    @State private var selectionPabrikan = ""
    
    let kategoriList = ["Red", "Green", "Blue", "Black", "Tartan"]
    let pabrikanList = ["Red", "Green", "Blue", "Black", "Tartan"]
    
    @Binding var showTambahObatPopUp : Bool
    
    var body: some View {
            VStack(alignment: .center){
                Spacer()
                HStack{
                    Button(action: {
                        showTambahObatPopUp = false
                    }){
                        Image(systemName: "arrow.left").imageScale(.large)
                            .foregroundColor(Color("LightGray"))
                            .padding(.leading,20)
                    }
                    
                    Text("Tambah Obat")
                        .font(.custom("PlusJakartaSans-Bold", size: 24))
                        .padding(.leading,120)
                    
                    Spacer()
                }
                .padding(.bottom,50)
                
                
                VStack(alignment: .leading){
                    
                    
                    Text("Nama Obat")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        
                    
                    TextField("", text: $namaObat)
                        .autocapitalization(.none)
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .frame(width: 450, height: 38)
                        .cornerRadius(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .inset(by: 0.50)
                                .stroke(Color(red: 0.93, green: 0.93, blue: 0.96), lineWidth: 0.50)
                        )
                        .padding(.bottom,14)
                    
                    Text("Nama Generik")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                    
                    TextField("", text: $namaGenerik)
                        .autocapitalization(.none)
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .frame(width: 450, height: 38)
                        .cornerRadius(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .inset(by: 0.50)
                                .stroke(Color(red: 0.93, green: 0.93, blue: 0.96), lineWidth: 0.50)
                        )
                        .padding(.bottom,14)
                    
                    Text("Takaran")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                    
                    TextField("", text: $takaran)
                        .autocapitalization(.none)
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .frame(width: 450, height: 38)
                        .cornerRadius(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .inset(by: 0.50)
                                .stroke(Color(red: 0.93, green: 0.93, blue: 0.96), lineWidth: 0.50)
                        )
                        .padding(.bottom,14)
                    
                    Text("Kategori")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                    
                    HStack{
                        if selectionKategori.isEmpty {
                            Text("Pilih Kategori")
                                .font(.custom("PlusJakartaSans-Regular", size: 14))
                                .foregroundColor(Color("LG"))
                        } else {
                            Text(selectionKategori)
                        }
                        Spacer()
                        Menu {
                            ForEach(kategoriList, id: \.self) { option in
                                Button(action: {
                                    selectionKategori = option
                                }) {
                                    Text(option)
                                }
                            }
                        } label: {
                            Image("ArrowDown")
                        }
                        .menuStyle(BorderlessButtonMenuStyle())
                        
                        
                    }
                    .padding()
                    .frame(width: 450, height: 38)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(red: 0.93, green: 0.93, blue: 0.96), lineWidth: 0.50)
                    )
                    .padding(.bottom, 14)
                    
                    Text("Rak")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                    
                    TextField("", text: $rak)
                        .autocapitalization(.none)
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .frame(width: 450, height: 38)
                        .cornerRadius(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .inset(by: 0.50)
                                .stroke(Color(red: 0.93, green: 0.93, blue: 0.96), lineWidth: 0.50)
                        )
                        .padding(.bottom,14)
                    
                    Text("Pabrikan")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                    
                    HStack{
                        if selectionPabrikan.isEmpty {
                            Text("Pilih Pabrikan")
                                .font(.custom("PlusJakartaSans-Regular", size: 14))
                                .foregroundColor(Color("LG"))
                        } else {
                            Text(selectionPabrikan)
                        }
                        Spacer()
                        Menu {
                            ForEach(pabrikanList, id: \.self) { option in
                                Button(action: {
                                    selectionPabrikan = option
                                }) {
                                    Text(option)
                                }
                            }
                        } label: {
                            Image("ArrowDown")
                        }
                        .menuStyle(BorderlessButtonMenuStyle())
                        
                        
                    }
                    .padding()
                    .frame(width: 450, height: 38)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(red: 0.93, green: 0.93, blue: 0.96), lineWidth: 0.50)
                    )
                    .padding(.bottom, 14)
                    
                    
                    
                    Text("Harga Beli Pabrikan")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                    
                    TextField("", text: $hargaBeliPabrikan)
                        .autocapitalization(.none)
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .frame(width: 450, height: 38)
                        .cornerRadius(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .inset(by: 0.50)
                                .stroke(Color(red: 0.93, green: 0.93, blue: 0.96), lineWidth: 0.50)
                        )
                        .padding(.bottom,14)
                    
                    Text("Harga Jual")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                    
                    TextField("", text: $hargaJual)
                        .autocapitalization(.none)
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .frame(width: 450, height: 38)
                        .cornerRadius(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .inset(by: 0.50)
                                .stroke(Color(red: 0.93, green: 0.93, blue: 0.96), lineWidth: 0.50)
                        )
                        .padding(.bottom,30)
                    
                    Divider()
                    
                    Button{
                        showTambahObatPopUp = false
                    }label: {
                        Text("Tambah Obat")
                            .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                            .foregroundColor(.white)
                            .frame(width: 450, height: 44)
                            .frame(height: 44)
                            .background(Color("Green"))
                            .cornerRadius(10)
                            .padding(.top,10)
                    }
                }.padding(.horizontal)
                
                Spacer()
                
            }
            .padding()
            .background(.white)
            .frame(width: 542)
            
            
            
        
    }
}

#Preview {
    TambahObatPopUp(showTambahObatPopUp: .constant(true))
}
