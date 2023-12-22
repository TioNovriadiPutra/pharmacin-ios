//
//  ManajemenRiwayatKasir.swift
//  Pharmacin
//
//  Created by Devin Maleke on 19/12/23.
//

import SwiftUI

struct ManajemenRiwayatKasirView: View {

    
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
                        Text("/ Riwayat Kasir")
                            .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                            .foregroundColor(Color("LightGray"))
                        
                        Spacer()
                        
                        Button{
                            ("Tanggal")
                        }label: {
                            HStack{
                                Text("From: DD-MM-YYYY")
                                    .font(.custom("PlusJakartaSans-SemiBold", size: 14))
                                    .foregroundColor(Color("LG"))
                                Spacer()
                                Text("From: DD-MM-YYYY")
                                    .font(.custom("PlusJakartaSans-SemiBold", size: 14))
                                    .foregroundColor(Color("LG"))
                            }
                            .padding()
                            .frame(width: 331, height: 44)
                            .background(Color(.white))
                            .cornerRadius(10)
                            .padding(.trailing,70)
                        }
                      
                        
                        
                       
                    }
                    
                    HStack{
                        ManajemenRiwayatKasirList()
                        Spacer()
                    }
                    Spacer()
                }
                .padding()
                
            }
        }
        }
    }}

struct ManajemenRiwayatKasir_Preview: PreviewProvider {
    static var previews: some View {
        ManajemenRiwayatKasirView()
        ManajemenRiwayatKasirView().previewInterfaceOrientation(.landscapeRight)
        
    }
}
