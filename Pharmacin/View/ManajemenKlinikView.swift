//
//  ManajemenKlinikView.swift
//  Pharmacin
//
//  Created by Devin Maleke on 19/12/23.
//

import SwiftUI

struct ManajemenKlinikView: View {
    @State private var searchText: String = ""
    @Binding var showEditInfoKlinikPopUp: Bool

    
    var body: some View {
        NavigationStack{
            GeometryReader{ geometry in
            ZStack{
                Color(red: 0.98, green: 0.98, blue: 0.99)
                    .ignoresSafeArea()
                
                
                VStack(alignment:.leading, spacing:14){
                   
                    HStack(spacing:14){
                        Text("Manajemen")
                            .font(.custom("PlusJakartaSans-Bold", size: 24))
                            .foregroundColor(Color("Subtitle"))
                        Text("/ Klinik")
                            .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                            .foregroundColor(Color("LightGray"))
                        
                        Spacer()
                            
                        Button{
                            showEditInfoKlinikPopUp = true
                        }label: {
                            Text("Edit Informasi")
                                .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                .foregroundColor(.white)
                                .frame(width: 230, height: 44)
                                .background(Color("Cream"))
                                .cornerRadius(10)
                                .padding(.trailing,70)
                                
                        }   
                        
                    }
                    
                    ZStack(alignment:.leading){
                        Rectangle()
                            .cornerRadius(8)
                            .foregroundColor(.white)
                        VStack(alignment: .leading) {
                            Text("Nama Klinik")
                                .font(.custom("PlusJakartaSans-medium", size: 16))
                                .foregroundColor(Color("LightGray"))
                            
                            Text("222.000.000")
                                .font(.custom("PlusJakartaSans-Regular", size: 14))
                                .foregroundColor(Color("RegularText"))
                                .frame(width: 450, alignment: .leading)
                                .padding(8)
                                .background(Color(red: 0.98, green: 0.98, blue: 0.99))
                                .cornerRadius(4)
                                .padding(.bottom,14)
                            
                            Text("Alamat")
                                .font(.custom("PlusJakartaSans-medium", size: 16))
                                .foregroundColor(Color("LightGray"))
                            
                            Text("222.000.000")
                                .font(.custom("PlusJakartaSans-Regular", size: 14))
                                .foregroundColor(Color("RegularText"))
                                .frame(width: 450, alignment: .leading)
                                .padding(8)
                                .background(Color(red: 0.98, green: 0.98, blue: 0.99))
                                .cornerRadius(4)
                                .padding(.bottom,14)
                            
                            Text("Email")
                                .font(.custom("PlusJakartaSans-medium", size: 16))
                                .foregroundColor(Color("LightGray"))
                            
                            Text("222.000.000")
                                .font(.custom("PlusJakartaSans-Regular", size: 14))
                                .foregroundColor(Color("RegularText"))
                                .frame(width: 450, alignment: .leading)
                                .padding(8)
                                .background(Color(red: 0.98, green: 0.98, blue: 0.99))
                                .cornerRadius(4)
                                .padding(.bottom,14)
                            Text("Telepon")
                                .font(.custom("PlusJakartaSans-medium", size: 16))
                                .foregroundColor(Color("LightGray"))
                            
                            Text("222.000.000")
                                .font(.custom("PlusJakartaSans-Regular", size: 14))
                                .foregroundColor(Color("RegularText"))
                                .frame(width: 450, alignment: .leading)
                                .padding(8)
                                .background(Color(red: 0.98, green: 0.98, blue: 0.99))
                                .cornerRadius(4)
                            
                            Spacer()
                            
                        }.padding()
                        
                    }.padding(.trailing,70)
                                            
                                           
                        
                    
                    
                   
                   
                       
                    
                    Spacer()
                }
                .padding()
                
            }
        }
        }
    }
}

struct ManajemenKlinik_Preview: PreviewProvider {
    static var previews: some View {
        ManajemenKlinikView(showEditInfoKlinikPopUp: .constant(true))
        ManajemenKlinikView(showEditInfoKlinikPopUp: .constant(true)).previewInterfaceOrientation(.landscapeRight)
        
    }
}
