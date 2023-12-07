//
//  TambahPabrikPopUp.swift
//  Pharmacin
//
//  Created by Devin Maleke on 07/12/23.
//

import SwiftUI

struct TambahPabrikPopUp: View {
    @State private var namaPabrik: String = ""
    @State private var email: String = ""
    @State private var noTelepon: String = ""
    
    var body: some View {
            VStack(alignment: .center){
                Spacer()
                HStack{
                    Image(systemName: "arrow.left").imageScale(.large)
                        .foregroundColor(Color("LightGray"))
                        .padding(.leading,20)
                    
                    Text("Tambah Obat")
                        .font(.custom("PlusJakartaSans-Bold", size: 24))
                        .padding(.leading,120)
                    
                    Spacer()
                }
                .padding(.bottom,50)
                
                
                VStack(alignment: .leading){
                    Text("Pabrik")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                    
                    TextField("", text: $namaPabrik)
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
                        .autocapitalization(.none)
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .frame(width: 450, height: 38)
                        .cornerRadius(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .inset(by: 0.50)
                                .stroke(Color(red: 0.93, green: 0.93, blue: 0.96), lineWidth: 0.50)
                        )
                        .padding(.bottom,30)
                    
                   Spacer()
                    
                    Divider()
                    
                    Button{
                        print("Tambah Obat")
                    }label: {
                        Text("Tambah Obat")
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

struct Tambah_PabrikView: PreviewProvider {
    static var previews: some View {
        TambahPabrikPopUp()
        TambahPabrikPopUp().previewInterfaceOrientation(.landscapeRight)
    }
}
