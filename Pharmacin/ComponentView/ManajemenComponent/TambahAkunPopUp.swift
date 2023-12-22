//
//  TambahAkunPopUp.swift
//  Pharmacin
//
//  Created by Devin Maleke on 19/12/23.
//

import SwiftUI

struct TambahAkunPopUp: View {
    @State private var nama: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var konfirmasiPassword: String = ""
    @State private var isSecured: Bool = true
//    @Binding var showTambahKategoriPopUp: Bool
   
    var body: some View {
            VStack(alignment: .center){
                Spacer()
                HStack{
                    Button(action: {
//                        showTambahKategoriPopUp = false
                    }){
                        Image("BackButton")
                            .padding(.leading,20)
                    }
                    
                    Text("Tambah Akun")
                        .font(.custom("PlusJakartaSans-Bold", size: 24))
                        .padding(.leading,90)
                        
                    
                    Spacer()
                }
                .padding(.bottom,50)
                
                
                VStack(alignment: .leading){
                    Text("Nama")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        
                    
                    TextField("", text: $nama)
                        .padding()
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
                    
                    Text("Email")
                    
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        
                    
                    TextField("", text: $email)
                        .padding()
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
                    
                    Text("Password")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                    
                    HStack{
                        Group {
                            if isSecured {
                                SecureField("", text: $password)
                                    .padding()
                                    .autocapitalization(.none)
                                    .font(.custom("PlusJakartaSans-Medium", size: 14))
                                
                            } else {
                                TextField("", text: $password)
                                    .padding()
                                    .autocapitalization(.none)
                                    .font(.custom("PlusJakartaSans-Medium", size: 14))
                                
                            }
                            
                            Button(action: {
                                isSecured.toggle()
                            }) {
                                Image(self.isSecured ? "EyeClose" : "EyeOpen")
                                    .padding(.trailing,8)
                                
                            }
                            
                            
                        }
                        
                    }
                    .frame(width: 450, height: 38)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .inset(by: 0.50)
                            .stroke(Color(red: 0.93, green: 0.93, blue: 0.96), lineWidth: 0.50)
                    )

                    .padding(.bottom,14)
                    
                    Text("Konfirmasi Password")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        
                    SecureField("", text: $konfirmasiPassword)
                        .padding()
                        .autocapitalization(.none)
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .frame(width: 450, height: 38)
                        .cornerRadius(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .inset(by: 0.50)
                                .stroke(Color(red: 0.93, green: 0.93, blue: 0.96), lineWidth: 0.50)
                        )
                        Spacer()
                    
                    Divider()
                    
                    Button{
//                        showTambahKategoriPopUp = false
                    }label: {
                        Text("Tambah Akun")
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
    TambahAkunPopUp()
}
