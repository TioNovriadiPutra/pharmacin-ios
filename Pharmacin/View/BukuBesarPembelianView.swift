//
//  BukuBesarPembelianView.swift
//  Pharmacin
//
//  Created by Devin Maleke on 08/12/23.
//

import SwiftUI

struct BukuBesarPembelianView: View {
    var body: some View {
        NavigationStack{
            GeometryReader{ geometry in
            ZStack{
                Color(red: 0.98, green: 0.98, blue: 0.99)
                    .ignoresSafeArea()
                
                
                HStack{
                    VStack(alignment:.leading, spacing:14){
                        HStack(spacing:14){
                            Text("Buku Besar")
                                .font(.custom("PlusJakartaSans-Bold", size: 24))
                                .foregroundColor(Color("Subtitle"))
                            Text("/ Pembelian")
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
                                Text("Total Penjualan:")
                                    .font(.custom("PlusJakartaSans-Medium", size: 16))
                                    .foregroundColor(Color("LG"))
                                Spacer()
                                Text("100.000.000")
                                    .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                    .foregroundColor(Color("RegularText"))
                                 
                                
                            }
                            .padding()
                            .frame(width: 350, height: 44)
                            .background(.white)
                            .cornerRadius(10)
                            .padding(.trailing,70)
                        }
                        
                        BukuBesarPembelianList()
                        
                        Spacer()
                    }
                    .padding()
                    Spacer()
                }
                
            }
        }
        }
    }
}

struct BukuBesarPembelian_Preview: PreviewProvider {
    static var previews: some View {
        BukuBesarPembelianView()
        BukuBesarPembelianView().previewInterfaceOrientation(.landscapeRight)
        
    }
}
