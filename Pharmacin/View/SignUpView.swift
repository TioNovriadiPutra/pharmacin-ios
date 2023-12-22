//
//  SignUpView.swift
//  Pharmacin
//
//  Created by Devin Maleke on 18/12/23.
//

import SwiftUI

struct SignUpView: View {
    
    @Environment (\.presentationMode) var presentationMode
    @State private var namaLengkap: String = ""
    @State private var jenisKelamin: String = ""
    @State private var nomorHandphone: String = ""
    @State private var namaKlinik: String = ""
    @State private var nomorTelepon: String = ""
    @State private var email: String = ""
    @State private var konfirmasiPassword: String = ""
    @State private var isSecured: Bool = true
    @State private var password: String = ""
    
    let jenisKelaminList = ["Laki-laki", "Perempuan"]
    @State private var selectionJenisKelamin = ""

    var body: some View {
        NavigationStack{
            GeometryReader{ geometry in
                ZStack{
                    Image("SignUpBackground") 
                        .resizable()
                        .frame(maxWidth: .infinity)
                        .frame(maxHeight: .infinity)
                        .ignoresSafeArea()
                    
                    VStack{
                        Image("PharmacinWhite")
                            .padding(.bottom)
                        Image("PharmacinText")
                            .padding(.bottom,26)
                        
                        VStack{
                            HStack(alignment:.top){
                                Button(action: {
                                    presentationMode.wrappedValue.dismiss()
                                }){
                                    Image("BackButton")
                                }
                                Spacer()
                                VStack{
                                    Text("Masuk")
                                        .font(Font.custom("PlusJakartaSans-Bold", size: 24))
                                        .foregroundColor(Color(red: 0.47, green: 0.47, blue: 0.47))
                                        .padding(.bottom,8)
                                    Text("Masukan alamat email dan kata sandi untuk\n membuat akun")
                                        .font(Font.custom("PlusJakartaSans-Regular", size: 14))
                                        .foregroundColor(Color(red: 0.67, green: 0.67, blue: 0.67))
                                        .multilineTextAlignment(.center)
                                }
                                Spacer()
                            }.padding(.horizontal)
                            .padding(.bottom,30)
                            .padding(.top,15)
                            
                            HStack(alignment:.top, spacing: 50){
                                VStack{
                                    TextField("Nama Lengkap", text: $namaLengkap)
                                        .padding()
                                        .frame(width: 320, height: 38)
                                    
                                        .autocapitalization(.none)
                                        .font(.custom("PlusJakartaSans-Medium", size: 14))
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(Color(red: 0.93, green: 0.93, blue: 0.96))
                                        )
                                        .padding(.bottom,24)
                                    HStack{
                                        if selectionJenisKelamin.isEmpty {
                                            Text("Jenis Kelamin")
                                                .font(.custom("PlusJakartaSans-Regular", size: 14))
                                                .foregroundColor(Color("LG"))
                                        } else {
                                            Text(selectionJenisKelamin)
                                        }
                                        Spacer()
                                        Menu {
                                            ForEach(jenisKelaminList, id: \.self) { option in
                                                Button(action: {
                                                    selectionJenisKelamin = option
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
                                    .frame(width: 320, height: 38)
                                    .background(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color(red: 0.93, green: 0.93, blue: 0.96))
                                    )

                                        .padding(.bottom,24)
                                    
                                    TextField("Nomor Handphone", text: $nomorHandphone)
                                        .padding()
                                        .frame(width: 320, height: 38)
                                    
                                        .autocapitalization(.none)
                                        .font(.custom("PlusJakartaSans-Medium", size: 14))
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(Color(red: 0.93, green: 0.93, blue: 0.96))
                                        )
                                        .padding(.bottom,24)
                                    TextField("Nama Klinik", text: $namaKlinik)
                                        .padding()
                                        .frame(width: 320, height: 38)
                                    
                                        .autocapitalization(.none)
                                        .font(.custom("PlusJakartaSans-Medium", size: 14))
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(Color(red: 0.93, green: 0.93, blue: 0.96))
                                        )
                                        .padding(.bottom,24)
                                    TextField("Nomor Telepon", text: $nomorTelepon)
                                        .padding()
                                        .frame(width: 320, height: 38)
                                    
                                        .autocapitalization(.none)
                                        .font(.custom("PlusJakartaSans-Medium", size: 14))
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(Color(red: 0.93, green: 0.93, blue: 0.96))
                                        )
                                        .padding(.bottom,24)
                                    
                                    
                                }
                                VStack{
                                    
                                    TextField("Email", text: $email)
                                        .padding()
                                        .frame(width: 320, height: 38)
                                    
                                        .autocapitalization(.none)
                                        .font(.custom("PlusJakartaSans-Medium", size: 14))
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(Color(red: 0.93, green: 0.93, blue: 0.96))
                                        )
                                        .padding(.bottom,24)
                                    HStack{
                                        Group {
                                            if isSecured {
                                                SecureField("Password", text: $password)
                                                    .padding()
                                                    .autocapitalization(.none)
                                                    .font(.custom("PlusJakartaSans-Medium", size: 14))
                                                
                                            } else {
                                                TextField("Password", text: $password)
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
                                    .frame(width: 320, height: 38)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color(red: 0.93, green: 0.93, blue: 0.96))
                                    )
                                    
                                    .padding(.bottom,24)
                                    
                                    
                                    SecureField("Konfirmasi Password", text: $konfirmasiPassword)
                                        .padding()
                                        .frame(width: 320, height: 38)
                                    
                                        .autocapitalization(.none)
                                        .font(.custom("PlusJakartaSans-Medium", size: 14))
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(Color(red: 0.93, green: 0.93, blue: 0.96))
                                        )
                                    .padding(.bottom,24)                        }
                            }
                            Spacer()
                            Button(action: {
                                "Daftar"
                            }) {
                                Text("Daftar")
                                    .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                    .foregroundColor(.white)
                                    .frame(width: 264, height: 44)
                                    .background((Color("DarkBlue")))
                                    .cornerRadius(10)
                            }
                            .padding(.bottom,10)
                            
                            
                        }
                        .padding()
                        .frame(width: UIScreen.main.bounds.size.width - 300)
                        .frame(height: UIScreen.main.bounds.size.height - 250)
                        
                        .background(.white)
                        .cornerRadius(10)
                        .shadow(
                            color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 20, x: 2, y: 2
                        )
                        
                        Spacer()
                    }.padding()
                }
            }
        }
        
        }
}

struct SignUpView_Preview: PreviewProvider {
    static var previews: some View {
        SignUpView()
        SignUpView().previewInterfaceOrientation(.landscapeRight)
        
    }
}
