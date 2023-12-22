//
//  InformasiPabrikPopUp.swift
//  Pharmacin
//
//  Created by Devin Maleke on 07/12/23.
//

import SwiftUI

struct InformasiPabrikPopUp: View {
    @Binding var showInformasiPabrikPopUp : Bool
    
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Spacer()
                HStack{
                    Button {
                        showInformasiPabrikPopUp = false
                    } label: {
                        Image("BackButton")
                            .padding(.leading,20)
                    }
                    
                    Text("Informasi Obat")
                        .font(.custom("PlusJakartaSans-Bold", size: 24))
                        .padding(.leading,110)
                    
                    Spacer()
                }
                
                
                VStack(alignment:.leading, spacing: 14){
                    
                    HStack (spacing:10){
                        Spacer()
                        VStack{
                            ZStack{
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 136, height: 86)
                                    .background(Color(red: 1, green: 0.98, blue: 0.77))
                                    .cornerRadius(10)
                                
                                VStack(alignment: .center, spacing: 15){
                                    Text("1000")
                                        .font(.custom("PlusJakartaSans-medium", size: 14))
                                        .foregroundColor(Color(red: 0.81, green: 0.73, blue: 0.43))
                                    
                                    Text("Jenis Obat")
                                        .font(.custom("PlusJakartaSans-medium", size: 14))
                                        .foregroundColor(Color(red: 0.81, green: 0.73, blue: 0.43))
                            }
                            
                            
                        }
                    
                        }
                        
                        Spacer()
                        
                        VStack{
                            ZStack{
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 136, height: 86)
                                    .background(Color(red: 0.89, green: 0.94, blue: 1))
                                    .cornerRadius(10)
                                
                                VStack(alignment: .center, spacing: 6){
                                    Text("1000")
                                        .font(.custom("PlusJakartaSans-medium", size: 14))
                                        .foregroundColor(Color("DarkBlue"))
                                    
                                    Text("Total\nPenjualan")
                                        .font(.custom("PlusJakartaSans-medium", size: 14))
                                        .foregroundColor(Color("DarkBlue"))
                                        .multilineTextAlignment(.center)
                                
                                
                            }
                        }
                        
                        }
                        
                        Spacer()
                        
                        VStack{
                            ZStack{
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 136, height: 86)
                                    .background(Color(red: 0.84, green: 0.98, blue: 0.85))
                                    .cornerRadius(10)
                                
                                VStack(alignment: .center, spacing: 6){
                                    Text("1000")
                                        .font(.custom("PlusJakartaSans-medium", size: 14))
                                        .foregroundColor(Color("Green"))
                                    
                                    Text("Total\nPembelian")
                                        .font(.custom("PlusJakartaSans-medium", size: 14))
                                        .foregroundColor(Color("Green"))
                                        .multilineTextAlignment(.center)
                            }
                        }
                       
                        }
                        
                        
                       
                        Spacer()
  
                    }
                    Text("Pabrik")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .padding(.top,20)
                    
                    
                    
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

                    
                    Text("Email")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                    
                    HStack{
                        Text("LoremIpsum@gmail.com")
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
                    
                    Text("Telepon")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                    
                    HStack{
                        Text("0816293762839")
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


#Preview {
    InformasiPabrikPopUp(showInformasiPabrikPopUp: .constant(true))
}
