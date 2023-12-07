//
//  PabrikanKelolaPabrikView.swift
//  Pharmacin
//
//  Created by Devin Maleke on 07/12/23.
//

import SwiftUI

struct PabrikanKelolaPabrikView: View {
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color(red: 0.98, green: 0.98, blue: 0.99)
                    .ignoresSafeArea()
                
                ScrollView{
                    VStack(alignment:.leading, spacing:9){
                        Spacer()
                        HStack{
                            Text("Pabrikan")
                                .font(.custom("PlusJakartaSans-Bold", size: 24))
                                .foregroundColor(Color("Subtitle"))
                            Text("/ Kelola Pabrik")
                                .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                .foregroundColor(Color("LightGray"))
                           

                            Button{
                                ("Tambah Pabrikan")
                            }label: {
                                Text("Tambah Pabrikan")
                                    .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                    .foregroundColor(.white)
                                    .frame(width: 215, height: 44)
                                    .background(Color("Green"))
                                    .cornerRadius(10)
                            }
                            .padding(.leading,290)
                            .padding(.trailing,5)
                             
                            
                            HStack {
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(.gray)
                                    .padding(.leading, 8)
                                
                                TextField("Search here...", text: $searchText)
                                    .autocapitalization(.none)
                                    .font(.custom("PlusJakartaSans-Medium", size: 16))
                                
                                
                            }
                            .frame(width: 350, height: 44)
                            .background(Color(red: 0.94, green: 0.94, blue: 0.94))
                            .cornerRadius(10)
                        }
                        
                        HStack{
                            KelolaPabrikList()
                            Spacer()
                        }
                        
                    }
                    .padding()
                }
            }
        }
    }
}

struct Pabrikan_KelolaPabrikView: PreviewProvider {
    static var previews: some View {
        PabrikanKelolaPabrikView()
        PabrikanKelolaPabrikView().previewInterfaceOrientation(.landscapeRight)
    }
}
