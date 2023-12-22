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
            GeometryReader { geometry in
                ZStack{
                    Color(red: 0.98, green: 0.98, blue: 0.99)
                        .ignoresSafeArea()
                    
                    HStack{
                    VStack(alignment: .leading){
                        
                        HStack{
                            Image("BackButton")
                            
                            
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
                        .frame(height: 44)
                        .frame(width: UIScreen.main.bounds.size.width - 100)
                        .cornerRadius(10)
                        
                        
                        StokOpnameDetailList()
                        
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


struct Stok_OpnameDetailView: PreviewProvider {
    static var previews: some View {
        StokOpnameDetailView()
        StokOpnameDetailView().previewInterfaceOrientation(.landscapeRight)
    }
}
