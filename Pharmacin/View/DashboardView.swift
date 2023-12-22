//
//  Dashboard.swift
//  Pharmacin
//
//  Created by Devin Maleke on 25/11/23.
//

import SwiftUI

struct DashboardView: View {
    @State private var isClose = false
   
    
    var body: some View {
        NavigationStack{
            GeometryReader { geometry in
                ZStack{
                    Color(red: 0.98, green: 0.98, blue: 0.99)
                        .ignoresSafeArea()
                    
                    VStack(alignment:.leading){
                        
                        HStack{
                            Text("Dashboard")
                                .font(.custom("PlusJakartaSans-Bold", size: 24))
                                .foregroundColor(Color("Subtitle"))
                            
                            
                            Spacer()
                            Button{
                                self.isClose.toggle()
                            }label: {
                                Text(isClose ? "Tutup Kasir" : "Buka Kasir")
                                    .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                    .foregroundColor(.white)
                                    .frame(width: 264, alignment: .center)
                                    .frame(height: 40)
                                    .background(isClose ? Color("Red") : Color("Green"))
                                    .cornerRadius(10)
                                    .padding(.trailing, 70)
                            } 
                        }
                        HStack(spacing: 16){
                            DashboardCart("Total Transaksi Jual", value: "190", image: "TransactionIcon", sizeValue: 20)
                            DashboardCart("Total Penjualan", value: "Rp.1.000.000", image: "PenjualanIcon", sizeValue: 14)
                            DashboardCart("Kadaluarsa", value: "33", image: "KadaluarsaIcon", sizeValue: 20)
                            DashboardCart("Stok Menipis", value: "421", image: "StokMenipisIcon", sizeValue: 20)
                            Spacer()
                        }
                        
                        .padding(.bottom,8)
                        
                        ScrollView(.vertical){
                            HStack(spacing:16){
                                
                                VStack{
                                    PenjualanTerakhirCart()
                                    Spacer()
                                }
                                
                                VStack(spacing:14){
                                    RiwayatKasirCart()
                                    
                                    PembelianTerakhirCart()
                                    Spacer()
                                }
                                
                                Spacer()
                            }
                        }
                        
                    
                     
                        
                        
                        Spacer()
                    }
                    .padding()
                    
                    
                }
                
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

