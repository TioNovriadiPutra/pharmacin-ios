//
//  ObatKelolaItem.swift
//  Pharmacin
//
//  Created by Devin Maleke on 05/12/23.
//

import SwiftUI

struct ObatKelolaItemView: View {
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color(red: 0.98, green: 0.98, blue: 0.99)
                    .ignoresSafeArea()
                
                ScrollView{
                    VStack(alignment:.leading, spacing:9){
                        Spacer()
                        HStack{
                            Text("Obat")
                                .font(.custom("PlusJakartaSans-Bold", size: 24))
                                .foregroundColor(Color("Subtitle"))
                            Text("/ Kelola Item")
                                .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                .foregroundColor(Color("LightGray"))
                           

                            Button{
                                ("Tambah Penjualan")
                            }label: {
                                Text("Tambah Obat")
                                    .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                    .foregroundColor(.white)
                                    .frame(width: 188, height: 44)
                                    .background(Color("Green"))
                                    .cornerRadius(10)
                            }
                            .padding(.leading,375)
                            .padding(.trailing,5)
                             
                            
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
                        
                        HStack{
                            ObatKelolaItemList()
                            Spacer()
                        }
                        
                    }
                    .padding()
                }
            }
        }
    }
}

struct Obat_KelolaItemView: PreviewProvider {
    static var previews: some View {
        ObatKelolaItemView()
        ObatKelolaItemView().previewInterfaceOrientation(.landscapeRight)
    }
}

