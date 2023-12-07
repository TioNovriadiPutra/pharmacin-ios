//
//  InformasiObatPopUp.swift
//  Pharmacin
//
//  Created by Devin Maleke on 06/12/23.
//

import SwiftUI

struct InformasiObatPopUp: View {
    
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Spacer()
                HStack{
                    Image(systemName: "arrow.left").imageScale(.large)
                        .foregroundColor(Color("LightGray"))
                        .padding(.leading,20)
                    
                    Text("Informasi Obat")
                        .font(.custom("PlusJakartaSans-Bold", size: 24))
                        .padding(.leading,110)
                    
                    Spacer()
                }
                .padding(.bottom,50)
                
                VStack(alignment:.leading, spacing: 14){
                    Text("Nama Obat")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                    
                    
                    
                    HStack{
                        Text("Lorem Ipsum")
                            .font(.custom("PlusJakartaSans-Regular", size: 14))
                            .foregroundColor(Color("RegularText"))
                        Spacer()
                    }
                    .padding()
                    .frame(width: 450, height: 38)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(red: 0.93, green: 0.93, blue: 0.96), lineWidth: 0.50)
                    )
                    .cornerRadius(8)
                    .padding(.bottom, 14)
                    
                    
                    
                    
                    
                    Text("Nama Generik")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                    
                    HStack{
                        Text("Lorem Ipsum")
                            .font(.custom("PlusJakartaSans-Regular", size: 14))
                            .foregroundColor(Color("RegularText"))
                        Spacer()
                    }
                    .padding()
                    .frame(width: 450, height: 38)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(red: 0.93, green: 0.93, blue: 0.96), lineWidth: 0.50)
                    )
                    .cornerRadius(8)
                    .padding(.bottom, 14)
                    
                    Text("Takaran")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                    
                    HStack{
                        Text("125ml")
                            .font(.custom("PlusJakartaSans-Regular", size: 14))
                            .foregroundColor(Color("RegularText"))
                        Spacer()
                    }
                    .padding()
                    .frame(width: 450, height: 38)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(red: 0.93, green: 0.93, blue: 0.96), lineWidth: 0.50)
                    )
                    .cornerRadius(8)
                    .padding(.bottom, 14)
                    
                    Text("Kategori")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                    
                    HStack{
                        Text("Lorem Ipsum")
                            .font(.custom("PlusJakartaSans-Regular", size: 14))
                            .foregroundColor(Color("RegularText"))
                        Spacer()
                    }
                    .padding()
                    .frame(width: 450, height: 38)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(red: 0.93, green: 0.93, blue: 0.96), lineWidth: 0.50)
                    )
                    .cornerRadius(8)
                    .padding(.bottom, 14)
                    
                    Text("Rak")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                    
                    HStack{
                        Text("1")
                            .font(.custom("PlusJakartaSans-Regular", size: 14))
                            .foregroundColor(Color("RegularText"))
                        Spacer()
                    }
                    .padding()
                    .frame(width: 450, height: 38)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(red: 0.93, green: 0.93, blue: 0.96), lineWidth: 0.50)
                    )
                    .cornerRadius(8)
                    .padding(.bottom, 14)
                    
                    Text("Pabrikan")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                    
                    HStack{
                        Text("Lorem Ipsum")
                            .font(.custom("PlusJakartaSans-Regular", size: 14))
                            .foregroundColor(Color("RegularText"))
                        Spacer()
                    }
                    .padding()
                    .frame(width: 450, height: 38)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(red: 0.93, green: 0.93, blue: 0.96), lineWidth: 0.50)
                    )
                    .cornerRadius(8)
                    .padding(.bottom, 14)
                    
                    
                    
                    Text("Harga Beli Pabrikan")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                    
                    HStack{
                        Text("Rp. 250.000.000")
                            .font(.custom("PlusJakartaSans-Regular", size: 14))
                            .foregroundColor(Color("RegularText"))
                        Spacer()
                    }
                    .padding()
                    .frame(width: 450, height: 38)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(red: 0.93, green: 0.93, blue: 0.96), lineWidth: 0.50)
                    )
                    .cornerRadius(8)
                    .padding(.bottom, 14)
                    
                    Text("Harga Jual")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                    
                    HStack{
                        Text("Rp. 250.000.000")
                            .font(.custom("PlusJakartaSans-Regular", size: 14))
                            .foregroundColor(Color("RegularText"))
                        Spacer()
                    }
                    .padding()
                    .frame(width: 450, height: 38)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(red: 0.93, green: 0.93, blue: 0.96), lineWidth: 0.50)
                    )
                    .cornerRadius(8)
                    .padding(.bottom, 14)
                    
                    HStack {
                        Spacer()
                        VStack(alignment: .center, spacing: 15){
                            Text("1000")
                                .font(.custom("PlusJakartaSans-medium", size: 14))
                                .foregroundColor(Color(red: 0.85, green: 0.37, blue: 0.37))
                            
                            Text("Stok")
                                .font(.custom("PlusJakartaSans-medium", size: 14))
                                .foregroundColor(Color(red: 0.85, green: 0.37, blue: 0.37))
                        }
                        .background(
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 136, height: 86)
                                .background(Color(red: 1, green: 0.89, blue: 0.89))
                                .cornerRadius(10)
                        )
                        .padding(.trailing,70)
                        Spacer()
                        
                        VStack(alignment: .center, spacing: 6){
                            Text("1000")
                                .font(.custom("PlusJakartaSans-medium", size: 14))
                                .foregroundColor(Color("DarkBlue"))
                            
                            Text("Total\nPenjualan")
                                .font(.custom("PlusJakartaSans-medium", size: 14))
                                .foregroundColor(Color("DarkBlue"))
                                .multilineTextAlignment(.center)
                        }
                        .background(
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 136, height: 86)
                                .background(Color(red: 0.89, green: 0.94, blue: 1))
                                .cornerRadius(10)
                        )
                        
                        Spacer()
                        
                        VStack(alignment: .center, spacing: 6){
                            Text("1000")
                                .font(.custom("PlusJakartaSans-medium", size: 14))
                                .foregroundColor(Color("Green"))
                            
                            Text("Total\nPembelian")
                                .font(.custom("PlusJakartaSans-medium", size: 14))
                                .foregroundColor(Color("Green"))
                                .multilineTextAlignment(.center)
                        }
                        .background(
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 136, height: 86)
                                .background(Color(red: 0.84, green: 0.98, blue: 0.85))
                                .cornerRadius(10)
                        )
                        
                        .padding(.leading,50)
                        Spacer()
                        
                        
                        
                    }.padding(.top,26)
                    
                }.padding(.horizontal)
                Spacer()
                
            }
            .padding()
            .background(.white)
            .frame(width: 542)
            
            
        }
    }
}

#Preview {
    InformasiObatPopUp()
}
