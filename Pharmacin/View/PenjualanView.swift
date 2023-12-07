//
//  PenjualanView.swift
//  Pharmacin
//
//  Created by Devin Maleke on 30/11/23.
//

import SwiftUI

struct PenjualanView: View {
    @State private var searchName: String = ""
    @State private var searchPayment: String = ""
    @Binding var showSuccessPopup: Bool
    
    
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color(red: 0.98, green: 0.98, blue: 0.99)
                    .ignoresSafeArea()
                VStack(alignment: .leading, spacing: 20){
                    HStack{
                        Text("Penjualan")
                            .font(.custom("PlusJakartaSans-Bold", size: 24))
                            .foregroundColor(Color("Subtitle"))
                        
                        
                        Spacer()
                        Button{
                            print("Cancel")
                        }label: {
                            Text("Cancel")
                                .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                .foregroundColor(.white)
                                .frame(width: 180, alignment: .center)
                                .frame(height: 44)
                                .background(Color("Red"))
                                .cornerRadius(10)
                        }
                        
                        Button{
                            print("Confirm")
                        }label: {
                            Text("Confirm")
                                .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                .foregroundColor(.white)
                                .frame(width: 180, alignment: .center)
                                .frame(height: 44)
                                .background(Color("Green"))
                                .cornerRadius(10)
                                .padding(.trailing, 55)
                        }
                    }
                    
                    HStack{
                        VStack(alignment: .leading, spacing: 10){
                            Text("Nama Pelanggan")
                                .font(.custom("PlusJakartaSans-medium", size: 16))
                                .foregroundColor(Color("LightGray"))
                            
                            TextField("Masukan Nama", text: $searchName)
                                .padding()
                                .autocapitalization(.none)
                                .font(.custom("PlusJakartaSans-Medium", size: 14))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(Color(red: 0.93, green: 0.93, blue: 0.96))
                                )
                                .frame(width: 378, height: 38)
                            
                            Text("Payment Type")
                                .font(.custom("PlusJakartaSans-medium", size: 16))
                                .foregroundColor(Color("LightGray"))
                            TextField("Pilih Jenis Pembayaran", text: $searchPayment)
                                .padding()
                                .autocapitalization(.none)
                                .font(.custom("PlusJakartaSans-Medium", size: 14))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(Color(red: 0.93, green: 0.93, blue: 0.96))
                                )
                                .frame(width: 378, height: 38)
                            
                            Text("Date")
                                .font(.custom("PlusJakartaSans-medium", size: 16))
                                .foregroundColor(Color("LightGray"))
                            
                            Text("DD-MM-YYYY")
                                .font(.custom("PlusJakartaSans-Regular", size: 14))
                                .foregroundColor(Color("RegularText"))
                                .frame(width: 378, alignment: .leading) // Mengatur agar teks berada di leading
                                .padding() // Menambahkan padding jika diperlukan
                                .background(Color(red: 0.98, green: 0.98, blue: 0.99))
                        }
                        .padding()
                        .frame(width: 460, height: 276)
                        .background(Color.white)
                        .cornerRadius(12)
                        
                        VStack(alignment: .leading, spacing: 10){
                            Text("Total")
                                .font(.custom("PlusJakartaSans-medium", size: 16))
                                .foregroundColor(Color("LightGray"))
                            
                            Text("222.000.000")
                                .font(.custom("PlusJakartaSans-Regular", size: 14))
                                .foregroundColor(Color("RegularText"))
                                .frame(width: 632, alignment: .leading) // Mengatur agar teks berada di leading
                                .padding() // Menambahkan padding jika diperlukan
                                .background(Color(red: 0.98, green: 0.98, blue: 0.99))
                            
                            
                            Text("Tunai")
                                .font(.custom("PlusJakartaSans-medium", size: 16))
                                .foregroundColor(Color("LightGray"))
                            
                            Text("222.000.000")
                                .font(.custom("PlusJakartaSans-Regular", size: 14))
                                .foregroundColor(Color("RegularText"))
                                .frame(width: 632, alignment: .leading) // Mengatur agar teks berada di leading
                                .padding() // Menambahkan padding jika diperlukan
                                .background(Color(red: 0.98, green: 0.98, blue: 0.99))
                            
                            Text("Kembalian")
                                .font(.custom("PlusJakartaSans-medium", size: 16))
                                .foregroundColor(Color("LightGray"))
                            
                            Text("222.000.000")
                                .font(.custom("PlusJakartaSans-Regular", size: 14))
                                .foregroundColor(Color("RegularText"))
                                .frame(width: 632, alignment: .leading) // Mengatur agar teks berada di leading
                                .padding() // Menambahkan padding jika diperlukan
                                .background(Color(red: 0.98, green: 0.98, blue: 0.99))
                            
                            
                        }
                        .padding()
                        .frame(width: 668, height: 276)
                        .background(Color.white)
                        .cornerRadius(12)
                    }
                    
                    VStack(alignment: .center, spacing: 20) {
                        HStack {
                            Text("Item")
                                .font(.custom("PlusJakartaSans-Medium", size: 16))
                                .foregroundColor(Color("LightGray"))
                                .frame(width: 300, alignment: .leading)
                            Spacer()
                            Text("Stok")
                                .font(.custom("PlusJakartaSans-Medium", size: 16))
                                .foregroundColor(Color("LightGray"))
                                .frame(width: 100, alignment: .leading)
                            Spacer()
                            Text("QTY")
                                .font(.custom("PlusJakartaSans-Medium", size: 16))
                                .foregroundColor(Color("LightGray"))
                                .frame(width: 100, alignment: .leading)
                            Spacer()
                            Text("Harga")
                                .font(.custom("PlusJakartaSans-Medium", size: 16))
                                .foregroundColor(Color("LightGray"))
                                .frame(width: 180, alignment: .leading)
                            Spacer()
                            Text("Diskon")
                                .font(.custom("PlusJakartaSans-Medium", size: 16))
                                .foregroundColor(Color("LightGray"))
                                .frame(width: 100, alignment: .leading)
                            Spacer()
                            Text("Total")
                                .font(.custom("PlusJakartaSans-Medium", size: 16))
                                .foregroundColor(Color("LightGray"))
                                .frame(width: 180, alignment: .leading)
                            Spacer()
                            Text("Tindakan")
                                .font(.custom("PlusJakartaSans-Medium", size: 16))
                                .foregroundColor(Color("LightGray"))
                                .frame(width: 80, alignment: .leading)
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color(red: 0.98, green: 0.98, blue: 0.99))
                        .cornerRadius(10)
                        
                        HStack {
                            TextField("Masukan Obat", text: $searchName)
                                .padding()
                                .autocapitalization(.none)
                                .font(.custom("PlusJakartaSans-Medium", size: 14))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(Color(red: 0.93, green: 0.93, blue: 0.96))
                                )
                                .frame(width: 300, height: 38)
                                .font(.custom("PlusJakartaSans-Regular", size: 14))
                                .foregroundColor(Color("RegularText"))
                                .frame(width: 300, alignment: .leading)
                                .padding(.leading,12)
                            
                            Spacer()
                            
                            Text("100")
                                .font(.custom("PlusJakartaSans-Regular", size: 14))
                                .foregroundColor(Color("RegularText"))
                                .frame(width: 100, alignment: .leading)
                            
                            
                            Spacer()
                            
                            TextField("-", text: $searchName)
                                .padding()
                                .autocapitalization(.none)
                                .font(.custom("PlusJakartaSans-Medium", size: 14))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(Color(red: 0.93, green: 0.93, blue: 0.96))
                                )
                                .frame(width: 68, height: 38)
                                .font(.custom("PlusJakartaSans-Regular", size: 14))
                                .foregroundColor(Color("RegularText"))
                                .frame(width: 100, alignment: .leading)
                            
                            Spacer()
                            
                            Text("100")
                                .font(.custom("PlusJakartaSans-Regular", size: 14))
                                .foregroundColor(Color("RegularText"))
                                .frame(width: 180, alignment: .leading)
                            
                            Spacer()
                            
                            Text("00.00")
                                .font(.custom("PlusJakartaSans-Regular", size: 14))
                                .foregroundColor(Color("RegularText"))
                                .frame(width: 100, alignment: .leading)
                            
                            Spacer()
                            
                            Text("100")
                                .font(.custom("PlusJakartaSans-Regular", size: 14))
                                .foregroundColor(Color("RegularText"))
                                .frame(width: 180, alignment: .leading)
                            
                            Spacer()
                            
                            Button{
                                print("Cancel")
                            }label: {
                                Text("X")
                                    .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                    .foregroundColor(.white)
                                    .frame(width: 32, alignment: .center)
                                    .frame(height: 32)
                                    .background(Color("Red"))
                                    .cornerRadius(10)
                                
                            }.frame(width: 80, alignment: .leading)
                        }
                        
                        
                        
                        
                        Button{
                            showSuccessPopup = true
                        }label: {
                            Text("Add Item")
                                .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                .foregroundColor(.white)
                                .frame(width: 155, alignment: .center)
                                .frame(height: 44)
                                .background(Color("DarkBlue"))
                                .cornerRadius(10)
                                .padding(.top,20)
                        }
                        
                        
                        
                        Spacer()
                    }
                    .padding()
                    .frame(height: 400)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(12)
                    
                    
                    
                    
                    
                    Spacer()
                }
                .padding()
                
            }
        }
    }
    
}

struct Penjualan_Preview: PreviewProvider {
    static var previews: some View {
        PenjualanView(showSuccessPopup: .constant(true))
        PenjualanView(showSuccessPopup: .constant(true)).previewInterfaceOrientation(.landscapeRight)
        
    }
}
