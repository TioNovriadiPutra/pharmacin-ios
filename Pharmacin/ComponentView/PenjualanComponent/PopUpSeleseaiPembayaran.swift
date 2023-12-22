//
//  PopUpSeleseaiPembayaran.swift
//  Pharmacin
//
//  Created by Devin Maleke on 02/12/23.
//

import SwiftUI

struct PopUpSeleseaiPembayaran: View {
    @Binding var showTutupSelesaiPembayaranPopup: Bool
    
    var body: some View {
        
        ZStack{
            LottieView(lottieFile: "CheckLottie")
                .frame(width: 300, height: 300)
                .background(.white)
            VStack{
                Text("Pembayaran Berhasil")
                    .font(.custom("PlusJakartaSans-Bold", size: 24))
                
                Spacer()
                
                Divider()
                    .padding(.horizontal)
                Button{
                    showTutupSelesaiPembayaranPopup = true
                }label: {
                    Text("Selesai")
                        .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                        .foregroundColor(.white)
                        .frame(width: 450, height: 44)
                        .frame(height: 44)
                        .background(Color("Green"))
                        .cornerRadius(10)
                        .padding(.top,20)
                }
                
               
               
                
            }
            .padding(.top,40)
            .padding(.bottom,20)
            .padding()
            .frame(width: 542, height: 522)
            .background(.clear) 
            .cornerRadius(10)
        }
        .background(.white)
        .frame(width: 542, height: 522) 
        .cornerRadius(10)
        
        
    }
}

#Preview {
    PopUpSeleseaiPembayaran(showTutupSelesaiPembayaranPopup: .constant(true))
}
