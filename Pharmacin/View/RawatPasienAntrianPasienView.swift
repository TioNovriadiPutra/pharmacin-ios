//
//  RawatPasienAntrianPasienHariIniView.swift
//  Pharmacin
//
//  Created by Devin Maleke on 01/01/24.
//

import SwiftUI

struct RawatPasienAntrianPasienHariIniView: View {
    @State private var isClose = false
    
    var body: some View {
        NavigationStack{
            GeometryReader { geometry in
                ZStack{
                    Color(red: 0.98, green: 0.98, blue: 0.99)
                        .ignoresSafeArea()
                    
                    VStack(alignment:.leading){
                        
                        HStack(spacing: 14){
                            Text("Rawat Pasien")
                                .font(.custom("PlusJakartaSans-Bold", size: 24))
                                .foregroundColor(Color("Subtitle"))
                            Text("/ Antrian Pasien Hari Ini")
                                .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                .foregroundColor(Color("LightGray"))
                            
                            Spacer() 
                        }
    
                        HStack(spacing: 16){
                            DashboardCart("Total Antrian", value: "190", image: "TotalAntrianIcon", sizeValue: 20)
                            DashboardCart("Antrian Sekarang", value: "421", image: "AntrianSekarangIcon", sizeValue: 14)
                            DashboardCart("Antrian Selanjutnya", value: "33", image: "AntrianSelanjutnyaIcon", sizeValue: 20)
                            DashboardCart("Sisa Antrian", value: "421", image: "SisaAntrianIcon", sizeValue: 20)
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

struct RawatPasien_Previews: PreviewProvider {
    static var previews: some View {
        RawatPasienAntrianPasienHariIniView()
        RawatPasienAntrianPasienHariIniView().previewInterfaceOrientation(.landscapeRight)
        
    }
}

