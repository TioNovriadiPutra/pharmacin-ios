//
//  ManajemenAkunView.swift
//  Pharmacin
//
//  Created by Devin Maleke on 19/12/23.
//

import SwiftUI

struct ManajemenAkunView: View {
    @State private var searchText: String = ""
//    @Binding  var showDetailPabrik : Bool
//    @Binding var selecetedPabrik: Pabrikan?
//    @Binding var showTambahPabrikPopUp : Bool
    
    
    var body: some View {
        NavigationStack{
            GeometryReader{ geometry in
            ZStack{
                Color(red: 0.98, green: 0.98, blue: 0.99)
                    .ignoresSafeArea()
                VStack(alignment:.leading, spacing:14){
                    HStack(spacing: 14){
                        Text("Manajemen")
                            .font(.custom("PlusJakartaSans-Bold", size: 24))
                            .foregroundColor(Color("Subtitle"))
                        Text("/ Akun")
                            .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                            .foregroundColor(Color("LightGray"))
                        
                        Spacer()
                        
                        Button{
//                            showTambahPabrikPopUp = true
                        }label: {
                            Text("Tambah Akun")
                                .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                .foregroundColor(.white)
                                .frame(width: 187, height: 44)
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
//                        KelolaPabrikList(showDetailPabrikView: $showDetailPabrik, selectedPabrikan: $selecetedPabrik)
                        
                        ManajemenAkunList()
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

struct ManajemenAkun_Preview: PreviewProvider {
    static var previews: some View {
        ManajemenAkunView()
        ManajemenAkunView().previewInterfaceOrientation(.landscapeRight)
        
    }
}
