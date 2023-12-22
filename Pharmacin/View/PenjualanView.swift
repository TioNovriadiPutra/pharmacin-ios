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
    
    let searchPaymentList = ["Red", "Green", "Blue", "Black", "Tartan"]
    @State private var selectionPayment = ""
    
      
    var body: some View {
        NavigationStack{
            GeometryReader { geometry in
            ZStack{
                Color(red: 0.98, green: 0.98, blue: 0.99)
                    .ignoresSafeArea()
                
                    VStack(alignment: .leading, spacing: 12){
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
                                showSuccessPopup = true
                            }label: {
                                Text("Confirm")
                                    .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                    .foregroundColor(.white)
                                    .frame(width: 180, alignment: .center)
                                    .frame(height: 44)
                                    .background(Color("Green"))
                                    .cornerRadius(10)
                                    .padding(.trailing,70)
                                    
                            }
                            
                        }
                        
                        HStack(spacing:12){
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
                                            .frame(height: 38)
                                           
                                    )
                                    .frame(width: 378)
                                    
                                    .padding(.bottom,10)
                                
                                Text("Payment Type")
                                    .font(.custom("PlusJakartaSans-medium", size: 16))
                                    .foregroundColor(Color("LightGray"))
                                HStack{
                                    if selectionPayment.isEmpty {
                                        Text("Pilih Jenis Pembayaran")
                                            .font(.custom("PlusJakartaSans-Regular", size: 14))
                                            .foregroundColor(Color("LG"))
                                    } else {
                                        Text(selectionPayment)
                                    }
                                    Spacer()
                                    Menu {
                                        ForEach(searchPaymentList, id: \.self) { option in
                                            Button(action: {
                                                selectionPayment = option
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
                                .frame(width: 378, height: 38)
                                .background(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(Color(red: 0.93, green: 0.93, blue: 0.96))
                                )
                                
                                .padding(.bottom,10)
                                
                                
                                Text("Date")
                                    .font(.custom("PlusJakartaSans-medium", size: 16))
                                    .foregroundColor(Color("LightGray"))
                                
                                Text("DD-MM-YYYY")
                                    .font(.custom("PlusJakartaSans-Regular", size: 14))
                                    .foregroundColor(Color("RegularText"))
                                    .padding()
                                    .frame(width: 378, alignment: .leading) // Mengatur agar teks berada di leading
                                    .padding() // Menambahkan padding jika diperlukan
                                    .frame(width: 378, height: 38)
                                    .background(Color(red: 0.98, green: 0.98, blue: 0.99))
                                    .cornerRadius(4)
                                
                            }
                            .padding(.horizontal)
                            .frame(height: 300)
                            .background(Color.white)
                            .cornerRadius(12)
                            
                            
                            VStack(alignment: .leading, spacing: 10){
                                Text("Total")
                                    .font(.custom("PlusJakartaSans-medium", size: 16))
                                    .foregroundColor(Color("LightGray"))
                                
                                Text("222.000.000")
                                    .font(.custom("PlusJakartaSans-Regular", size: 14))
                                    .foregroundColor(Color("RegularText"))
                                    .padding()
                                    .frame(maxWidth: .infinity, alignment: .leading) // Mengatur agar teks berada di leading
                                    .padding() // Menambahkan padding jika diperlukan
                                    .frame(height: 38)
//                                    .frame(width: UIScreen.main.bounds.size.width * 0.53)
                                    .background(Color(red: 0.98, green: 0.98, blue: 0.99))
                                    .cornerRadius(4)
                                
                                    .padding(.bottom,10)
                                
                                Text("Tunai")
                                    .font(.custom("PlusJakartaSans-medium", size: 16))
                                    .foregroundColor(Color("LightGray"))
                                
                                TextField("Masukan Tunai", text: $searchName)
                                    .padding()
                                    .autocapitalization(.none)
                                    .font(.custom("PlusJakartaSans-Medium", size: 14))
                                    .padding(.horizontal)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 8)
                                            .stroke(Color(red: 0.93, green: 0.93, blue: 0.96))
                                            .frame(height: 38)
                                           
                                           
                                    ) 
//                                    .frame(width: UIScreen.main.bounds.size.width * 0.53)
                                    
                                    .padding(.bottom,10)
                                
                                Text("Kembalian")
                                    .font(.custom("PlusJakartaSans-medium", size: 16))
                                    .foregroundColor(Color("LightGray"))
                                        
                                
                                Text("222.000.000")
                                    .font(.custom("PlusJakartaSans-Regular", size: 14))
                                    .foregroundColor(Color("RegularText"))
                                    .padding()
                                    .frame(maxWidth: .infinity, alignment: .leading) // Mengatur agar teks berada di leading
                                    .padding() // Menambahkan padding jika diperlukan
                                    .frame(height: 38)
                                    
                                    
//                                    .frame(width: UIScreen.main.bounds.size.width * 0.53)
                                
                                    .background(Color(red: 0.98, green: 0.98, blue: 0.99))
                                    .cornerRadius(4)
                                    
                                
                                
                                     
                            }
                            .padding(.horizontal)
                            .frame(height: 300)
//                            .frame(width: UIScreen.main.bounds.size.width * 0.56)
                            
                            .background(Color.white)
                            .cornerRadius(12)
                            
                            .padding(.trailing,70)
                            
                                          
                             
                        }
                        
                        TambahPenjualanList()
                            
                        Spacer() 
                        

                    }
                    
                    
                    .padding() 
                

            }
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
 

