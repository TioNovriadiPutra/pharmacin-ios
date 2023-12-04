//
//  StokOpnameDetailView.swift
//  Pharmacin
//
//  Created by Devin Maleke on 02/12/23.
//

import SwiftUI

struct StokOpnameDetailView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color(red: 0.98, green: 0.98, blue: 0.99)
                    .ignoresSafeArea()
                VStack{
                                    
                    HStack{
                        Image(systemName: "arrow.left").imageScale(.large)
                            .foregroundColor(Color("LightGray"))
                            
                        
                        Spacer()
                        
                        Text("ALANGSARI PLUS")
                            .font(.custom("PlusJakartaSans-Medium", size: 16))
                            .foregroundColor(Color("RegularText"))
                            
                        
                        Text("(Stock Opname)")
                            .font(.custom("PlusJakartaSans-Medium", size: 16))
                            .foregroundColor(Color("LightGray"))
                        
                        Spacer()
                        
                        Image("CheckGreen")
                            
                    }
                    .padding()
                    .background()
                    .frame(width: 1098, height: 44)
                    .cornerRadius(10)
                    
                        
                        
                    }
                    
                
                    Spacer()
                }
                .padding()
            }
        }
    }


struct Stok_OpnameDetailView: PreviewProvider {
    static var previews: some View {
        StokOpnameDetailView()
        StokOpnameDetailView().previewInterfaceOrientation(.landscapeRight)
    }
}
