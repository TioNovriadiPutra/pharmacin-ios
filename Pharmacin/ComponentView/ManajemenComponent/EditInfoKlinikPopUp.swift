//
//  EditInfoKlinikPopUp.swift
//  Pharmacin
//
//  Created by Devin Maleke on 23/12/23.
//

import SwiftUI

struct EditInfoKlinikPopUp: View {
    @State private var nama: String = ""
    @State private var alamat: String = ""
    @State private var email: String = ""
    @State private var noTelepon: String = ""
    @Binding var showEditInfoKlinikPopUp: Bool
   
    var body: some View {
            VStack(alignment: .center){
                Spacer()
                HStack{
                    Button(action: {
                        showEditInfoKlinikPopUp = false
                    }){
                        Image("BackButton")
                            .padding(.leading,20)
                    }
                    
                    Text("Ubah Info Klinik")
                        .font(.custom("PlusJakartaSans-Bold", size: 24))
                        .padding(.leading,90)
                        
                    
                    Spacer()
                }
                .padding(.bottom,50)
                
                
                VStack(alignment: .leading){
                    Text("Nama Klinik")
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
                    
                    Text("Alamat")
                    
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        
                    
                    TextField("", text: $alamat)
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
                    
                    Text("Telepon")
                    
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        
                    
                    TextField("", text: $noTelepon)
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
                    
                        Spacer()
                    
                    Divider()
                    
                    Button{
                        showEditInfoKlinikPopUp = false
                    }label: {
                        Text("Simpan")
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
    EditInfoKlinikPopUp(showEditInfoKlinikPopUp: .constant(true))
}

