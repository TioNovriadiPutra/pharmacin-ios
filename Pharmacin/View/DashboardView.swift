//
//  Dashboard.swift
//  Pharmacin
//
//  Created by Devin Maleke on 25/11/23.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color(red: 0.98, green: 0.98, blue: 0.99)
                    .ignoresSafeArea()
                
                VStack{
                    Spacer()
                    HStack{
                        Text("Dashboard")
                            .font(.custom("PlusJakartaSans-Bold", size: 24))
                            .foregroundColor(Color("Subtitle"))
                        
                        
                        Spacer()
                        Button{
                            print("Buka Kasir")
                        }label: {
                            Text("Buka Kasir")
                                .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                .foregroundColor(.white)
                                .frame(width: 264, alignment: .center)
                                .frame(height: 40)
                                .background(Color("Green"))
                                .cornerRadius(10)
                                .padding(.trailing, 55)
                        }
                    }
                    HStack(spacing: 16){
                        DashboardCart()
                        DashboardCart()
                        DashboardCart()
                        DashboardCart()
                        Spacer()
                    }
                    HStack(spacing:16){
                        PenjualanTerakhirCart()
                        
                        VStack{
                            RiwayatKasirCart()
                            
                            PembelianTerakhirCart()
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

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
        DashboardView().previewInterfaceOrientation(.landscapeRight)
        
    }
}
