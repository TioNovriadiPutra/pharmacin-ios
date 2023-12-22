//
//  LoginView.swift
//  Pharmacin
//
//  Created by Devin Maleke on 18/12/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var isSecured: Bool = true
    @State private var password: String = ""
    @StateObject private var loginVM = LoginViewModel()
    @State private var isLoggedIn = false
    
    
    var body: some View {
        NavigationStack{
            GeometryReader { geometry in
                ZStack{
                    Image("LoginBackground")
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
                            Text("Masuk")
                                .font(Font.custom("PlusJakartaSans-Bold", size: 24))
                                .foregroundColor(Color(red: 0.47, green: 0.47, blue: 0.47))
                                .padding(.bottom,8)
                            Text("Selamat datang, silahkan masuk dengan\n akun yang telah terdaftar")
                                .font(Font.custom("PlusJakartaSans-Regular", size: 14))
                                .foregroundColor(Color(red: 0.67, green: 0.67, blue: 0.67))
                                .multilineTextAlignment(.center)
                            
                                .padding(.bottom,42)
                            
                            TextField("Email", text: $loginVM.email)
                                .padding()
                                .frame(width: 320, height: 38)
                            
                                .autocapitalization(.none)
                                .font(.custom("PlusJakartaSans-Medium", size: 14))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(loginVM.hasError ? Color(Color("Red")) : Color(red: 0.93, green: 0.93, blue: 0.96))
                                )
                                .padding(.bottom,24)
                            HStack{
                                Group {
                                    if isSecured {
                                        SecureField("Password", text: $loginVM.password)
                                            .padding()
                                            .autocapitalization(.none)
                                            .font(.custom("PlusJakartaSans-Medium", size: 14))
                                        
                                    } else {
                                        TextField("Password", text: $loginVM.password)
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
                                    .stroke(loginVM.hasError ? Color(Color("Red")) : Color(red: 0.93, green: 0.93, blue: 0.96))
                            )
                             
                            .padding(.bottom,64)
                            NavigationLink(
                                destination: ContentView().navigationBarBackButtonHidden(true),
                                isActive: $loginVM.isAuthenticated,
                                label: {
                                    Button(action: {
                                        loginVM.login()
                                        
//                                        isLoggedIn = true
        
                                    }) {
                                        Text("Masuk")
                                            .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                            .foregroundColor(.white)
                                            .frame(width: 264, height: 44)
                                            .background((Color("Green")))
                                            .cornerRadius(10)
                                    }
                                    .padding(.bottom, 10)
                                }
                            )
                            
                            Divider()
                                .padding(.bottom,10)
                            
                            Text("Tidak punya akun?")
                                .font(.custom("PlusJakartaSans-Regular", size: 16))
                                .foregroundColor(Color(red: 0.67, green: 0.67, blue: 0.67))
                                .padding(.bottom,2)
                            
                            NavigationLink(destination: SignUpView().navigationBarBackButtonHidden(true)){
                                Text("Daftar disini")
                                    .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                    .foregroundColor(Color("Green"))
                            }
                            
                        }
                        .padding()
                        .padding(.top,25)
                        .frame(width: UIScreen.main.bounds.size.width - 800)
                        .frame(height: UIScreen.main.bounds.size.height - 300)
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



struct LoginView_Preview: PreviewProvider {
    static var previews: some View {
        LoginView()
        LoginView().previewInterfaceOrientation(.landscapeRight)
        
    }
}
