//
//  KelolaPembelianView.swift
//  Pharmacin
//
//  Created by Devin Maleke on 07/12/23.
//

import SwiftUI

struct KelolaPembelianView: View {
    @State private var searchText: String = ""
    @Binding var showTambahPembelianView : Bool
    @Binding var showKelolaPembelian : Bool
    
    var body: some View {
        NavigationStack{
            GeometryReader{ geometry in
            ZStack{
                Color(red: 0.98, green: 0.98, blue: 0.99)
                    .ignoresSafeArea()
                
                
                VStack(alignment:.leading, spacing:14){
                   
                    HStack(spacing:14){
                        Text("Pembelian")
                            .font(.custom("PlusJakartaSans-Bold", size: 24))
                            .foregroundColor(Color("Subtitle"))
                        Text("/ Kelola Pembelian")
                            .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                            .foregroundColor(Color("LightGray"))
                        
                        Spacer()
                        
                        Button{
                            showTambahPembelianView = true
                            showKelolaPembelian = false
                        }label: {
                            Text("Tambah Pembelian")
                                .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                .foregroundColor(.white)
                                .frame(width: 230, height: 44)
                                .background(Color("Green"))
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
                        .padding(.trailing,70)
                    }
                    
                    HStack{
                        KelolaPembelianList()
                        Spacer()
                    }
                    
                    Spacer()
                }
                .padding()
                
            }
        }
        }
    }
}

struct Kelola_PembelianView: PreviewProvider {
    static var previews: some View {
        KelolaPembelianView(showTambahPembelianView: .constant(true), showKelolaPembelian: .constant(true))
        KelolaPembelianView(showTambahPembelianView: .constant(true), showKelolaPembelian: .constant(true)).previewInterfaceOrientation(.landscapeRight)
    }
}
