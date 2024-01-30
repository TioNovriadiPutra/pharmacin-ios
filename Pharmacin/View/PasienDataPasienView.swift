//
//  PasienDataPasienView.swift
//  Pharmacin
//
//  Created by Devin Maleke on 04/01/24.
//

import SwiftUI

struct PasienDataPasienView: View {
    @State private var searchText: String = ""
    //@Binding var showTambahKategoriPopUp: Bool
    
    var body: some View {
        NavigationStack{
            GeometryReader{ geometry in
            ZStack{
                Color(red: 0.98, green: 0.98, blue: 0.99)
                    .ignoresSafeArea()
                
                VStack(alignment:.leading, spacing:14){
                 
                    HStack(spacing:14){
                        Text("Pasien")
                            .font(.custom("PlusJakartaSans-Bold", size: 24))
                            .foregroundColor(Color("Subtitle"))
                        Text("/ Data Pasien")
                            .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                            .foregroundColor(Color("LightGray"))
                        
                        Spacer()
                        Button{
                            //showTambahKategoriPopUp = true
                        }label: {
                            Text("Tambah Pasien")
                                .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                .foregroundColor(.white)
                                .frame(width: 198, height: 44)
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
                        DataPasienList()
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

struct Pasien_DataPasienView: PreviewProvider {
    static var previews: some View {
        PasienDataPasienView()
        PasienDataPasienView().previewInterfaceOrientation(.landscapeRight)
    }
}
