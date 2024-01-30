//
//  AssesmentList.swift
//  Pharmacin
//
//  Created by Devin Maleke on 30/01/24.
//

import SwiftUI

struct AssesmentList: View {
    
    @State private var searchText: String = ""
    
    var body: some View {
        VStack (alignment:.leading) {
            VStack{
                
                HStack (spacing:80){
                    VStack (alignment: .leading, spacing: 12){
                        
                        Text("Kode ICD-10")
                            .font(.custom("PlusJakartaSans-Medium", size: 16))
                            .foregroundColor(Color("LightGray"))
                            .frame(width: 120, alignment: .leading)
                        
                        TextField("Cari Kode", text: $searchText)
                            .padding()
                            .autocapitalization(.none)
                            .font(.custom("PlusJakartaSans-Medium", size: 16))
                            .frame(width: 450, height: 38)
                            .cornerRadius(8)
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .inset(by: 0.50)
                                    .stroke(Color(red: 0.93, green: 0.93, blue: 0.96), lineWidth: 0.50)
                            )
                        
                        Text("Diagnosa ICD-10")
                            .font(.custom("PlusJakartaSans-Medium", size: 16))
                            .foregroundColor(Color("LightGray"))
                            
                        
                        Text("-")
                            .padding()
                            .font(.custom("PlusJakartaSans-Medium", size: 16))
                            .frame(width: 450, height: 38, alignment: .leading)
                            .background(Color(red: 0.98, green: 0.98, blue: 0.99))
                            .cornerRadius(8)
                            

                        Spacer()
                    }
                    
                    VStack (alignment: .leading, spacing: 12){
                        
                        Text("DPJP")
                            .font(.custom("PlusJakartaSans-Medium", size: 16))
                            .foregroundColor(Color("LightGray"))
                        
                        Text("dr. Lorem Ipsum")
                            .padding()
                            .font(.custom("PlusJakartaSans-Medium", size: 16))
                            .frame(width: 450, height: 38, alignment: .leading)
                            .background(Color(red: 0.98, green: 0.98, blue: 0.99))
                            .cornerRadius(8)
                        Spacer()
                    }
                    Spacer()
                }
                
               
                Divider()
                    .padding(.vertical)
                
                HStack(spacing: 60){
                    VStack(alignment: .leading){
                        Text("BB")
                            .font(.custom("PlusJakartaSans-Medium", size: 16))
                            .foregroundColor(Color("LightGray"))
                            .frame(width: 120, alignment: .leading)
                        
                        HStack{
                            TextField("-", text: $searchText)
                                .padding()
                                .autocapitalization(.none)
                                .font(.custom("PlusJakartaSans-Medium", size: 16))
                                .frame(width: 70, height: 38)
                                .cornerRadius(8)
                                .background(
                                    RoundedRectangle(cornerRadius: 8)
                                        .inset(by: 0.50)
                                        .stroke(Color(red: 0.93, green: 0.93, blue: 0.96), lineWidth: 0.50)
                                )
                            
                            Text("Kg")
                                .font(.custom("PlusJakartaSans-Regular", size: 14))
                                .foregroundColor(Color("LightGray"))
                               
                        }
                        
                        
                    }
                    
                    VStack(alignment: .leading){
                        Text("TB")
                            .font(.custom("PlusJakartaSans-Medium", size: 16))
                            .foregroundColor(Color("LightGray"))
                            .frame(width: 120, alignment: .leading)
                        
                        HStack{
                            TextField("-", text: $searchText)
                                .padding()
                                .autocapitalization(.none)
                                .font(.custom("PlusJakartaSans-Medium", size: 16))
                                .frame(width: 70, height: 38)
                                .cornerRadius(8)
                                .background(
                                    RoundedRectangle(cornerRadius: 8)
                                        .inset(by: 0.50)
                                        .stroke(Color(red: 0.93, green: 0.93, blue: 0.96), lineWidth: 0.50)
                                )
                            
                            Text("Cm")
                                .font(.custom("PlusJakartaSans-Regular", size: 14))
                                .foregroundColor(Color("LightGray"))
                               
                        }
                        
                        
                    }
                    
                    VStack(alignment: .leading){
                        Text("Suhu")
                            .font(.custom("PlusJakartaSans-Medium", size: 16))
                            .foregroundColor(Color("LightGray"))
                            .frame(width: 120, alignment: .leading)
                        
                        HStack{
                            TextField("-", text: $searchText)
                                .padding()
                                .autocapitalization(.none)
                                .font(.custom("PlusJakartaSans-Medium", size: 16))
                                .frame(width: 70, height: 38)
                                .cornerRadius(8)
                                .background(
                                    RoundedRectangle(cornerRadius: 8)
                                        .inset(by: 0.50)
                                        .stroke(Color(red: 0.93, green: 0.93, blue: 0.96), lineWidth: 0.50)
                                )
                            
                            Text("°C")
                                .font(.custom("PlusJakartaSans-Regular", size: 14))
                                .foregroundColor(Color("LightGray"))
                               
                        }
                        
                        
                    }
                    
                    VStack(alignment: .leading){
                        Text("T.Darah")
                            .font(.custom("PlusJakartaSans-Medium", size: 16))
                            .foregroundColor(Color("LightGray"))
                            .frame(width: 120, alignment: .leading)
                        
                        HStack{
                            TextField("-", text: $searchText)
                                .padding()
                                .autocapitalization(.none)
                                .font(.custom("PlusJakartaSans-Medium", size: 16))
                                .frame(width: 70, height: 38)
                                .cornerRadius(8)
                                .background(
                                    RoundedRectangle(cornerRadius: 8)
                                        .inset(by: 0.50)
                                        .stroke(Color(red: 0.93, green: 0.93, blue: 0.96), lineWidth: 0.50)
                                )
                            
                            Text("MmHg")
                                .font(.custom("PlusJakartaSans-Regular", size: 14))
                                .foregroundColor(Color("LightGray"))
                               
                        }
                        
                        
                        
                        
                    }
                    
                    VStack(alignment: .leading){
                        Text("Nadi")
                            .font(.custom("PlusJakartaSans-Medium", size: 16))
                            .foregroundColor(Color("LightGray"))
                            .frame(width: 120, alignment: .leading)
                        
                        HStack{
                            TextField("-", text: $searchText)
                                .padding()
                                .autocapitalization(.none)
                                .font(.custom("PlusJakartaSans-Medium", size: 16))
                                .frame(width: 70, height: 38)
                                .cornerRadius(8)
                                .background(
                                    RoundedRectangle(cornerRadius: 8)
                                        .inset(by: 0.50)
                                        .stroke(Color(red: 0.93, green: 0.93, blue: 0.96), lineWidth: 0.50)
                                )
                            
                            Text("/Menit")
                                .font(.custom("PlusJakartaSans-Regular", size: 14))
                                .foregroundColor(Color("LightGray"))
                               
                        }
                        
                        
                        
                        
                    }
                    
                    Spacer()
                }
                
                Divider()
                    .padding(.vertical)
                
                HStack(spacing:70){
                    VStack (alignment: .leading, spacing: 12){
                        Text("Subjective")
                            .font(.custom("PlusJakartaSans-Medium", size: 16))
                            .foregroundColor(Color("LightGray"))
                            .frame(width: 120, alignment: .leading)
                        
                        TextField("Masukkan data Pasien", text: $searchText,axis: .vertical)
                            .padding()
                            .autocapitalization(.none)
                            .font(.custom("PlusJakartaSans-Medium", size: 16))
                            .frame(width: 450, height: 92, alignment: .topLeading)
                            
                            .cornerRadius(8)
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .inset(by: 0.50)
                                    .stroke(Color(red: 0.93, green: 0.93, blue: 0.96), lineWidth: 0.50)
                            )
                        
                        Text("Objective")
                            .font(.custom("PlusJakartaSans-Medium", size: 16))
                            .foregroundColor(Color("LightGray"))
                            .frame(width: 120, alignment: .leading)
                        
                        TextField("Masukkan data Pasien", text: $searchText,axis: .vertical)
                            .padding()
                            .autocapitalization(.none)
                            .font(.custom("PlusJakartaSans-Medium", size: 16))
                            .frame(width: 450, height: 92, alignment: .topLeading)
                            
                            .cornerRadius(8)
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .inset(by: 0.50)
                                    .stroke(Color(red: 0.93, green: 0.93, blue: 0.96), lineWidth: 0.50)
                            )
                        
                        
                            

                        Spacer()
                    }
                    
                    VStack (alignment: .leading, spacing: 12){
                        Text("Assesment")
                            .font(.custom("PlusJakartaSans-Medium", size: 16))
                            .foregroundColor(Color("LightGray"))
                            .frame(width: 120, alignment: .leading)
                        
                        TextField("Masukkan data Pasien", text: $searchText,axis: .vertical)
                            .padding()
                            .autocapitalization(.none)
                            .font(.custom("PlusJakartaSans-Medium", size: 16))
                            .frame(width: 450, height: 92, alignment: .topLeading)
                            
                            .cornerRadius(8)
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .inset(by: 0.50)
                                    .stroke(Color(red: 0.93, green: 0.93, blue: 0.96), lineWidth: 0.50)
                            )
                        
                        Text("Plan")
                            .font(.custom("PlusJakartaSans-Medium", size: 16))
                            .foregroundColor(Color("LightGray"))
                            .frame(width: 120, alignment: .leading)
                        
                        TextField("Masukkan data Pasien", text: $searchText,axis: .vertical)
                            .padding()
                            .autocapitalization(.none)
                            .font(.custom("PlusJakartaSans-Medium", size: 16))
                            .frame(width: 450, height: 92, alignment: .topLeading)
                            
                            .cornerRadius(8)
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .inset(by: 0.50)
                                    .stroke(Color(red: 0.93, green: 0.93, blue: 0.96), lineWidth: 0.50)
                            )
                        
                        
                            

                        Spacer()
                    }
                    
                    
                    
                    Spacer()
                }
                
                
            }
            .padding()
            .frame(height: 650)
            .frame(width: UIScreen.main.bounds.size.width - 100)
            .background(.white)
            .cornerRadius(10)
            
            HasilAssesmentAkhirList()
            
            
        }
    }
}

struct AssesmentList_Previews: PreviewProvider {
    static var previews: some View {
        AssesmentList()
        AssesmentList().previewInterfaceOrientation(.landscapeRight)
        
    }
}

