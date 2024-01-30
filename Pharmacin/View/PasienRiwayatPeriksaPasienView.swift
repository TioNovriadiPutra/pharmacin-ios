//
//  PasienRiwayatPeriksaPasienView.swift
//  Pharmacin
//
//  Created by Devin Maleke on 30/01/24.
//

import SwiftUI

struct PasienRiwayatPeriksaPasienView: View {
    
    @State private var searchText: String = ""
    var body: some View {
        NavigationStack{
            GeometryReader { geometry in
                ZStack{
                    Color(red: 0.98, green: 0.98, blue: 0.99)
                        .ignoresSafeArea()
                    
                    HStack{
                    VStack(alignment: .leading){
                        
                        HStack{
                            Image("BackButton")
                            
                            
                            Spacer()
                            
                            Text("Naufal Athallahardi")
                                .font(.custom("PlusJakartaSans-Medium", size: 16))
                                .foregroundColor(Color("RegularText"))
                            
                            Spacer()
                            
                            Image("Info")
                            
                        }
                        .padding()
                        .background()
                        .frame(height: 44)
                        .frame(width: UIScreen.main.bounds.size.width - 100)
                        .cornerRadius(10)
                        
                        HStack{
                            
                                Text("Kadaluarsa(20)")
                                    .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                    .foregroundColor(Color(.white))
                                    .frame(width: 700, height: 44)
                                    .background( Color("Green"))
                                    .cornerRadius(10)     
                            HStack {
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(.gray)
                                    .padding(.leading, 8)
                                
                                TextField("Search here...", text: $searchText)
                                    .autocapitalization(.none)
                                    .font(.custom("PlusJakartaSans-Medium", size: 16))
                                
                                
                            }
                            
                            .frame(height: 44)
                            .background(Color(red: 0.94, green: 0.94, blue: 0.94))
                            .cornerRadius(10)
                            .padding(.trailing,70)
                        }
                        
                        
                        
                        
                        
                        Spacer()
                        
                        
                    }
                    Spacer()
                }
                
                
               
                .padding()
            }
            
        }
            }
        }
    }


struct PasienRiwayatPeriksaPasien_View: PreviewProvider {
    static var previews: some View {
        PasienRiwayatPeriksaPasienView().previewInterfaceOrientation(.landscapeRight)
    }
}

