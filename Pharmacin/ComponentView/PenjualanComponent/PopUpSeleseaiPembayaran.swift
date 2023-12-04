//
//  PopUpSeleseaiPembayaran.swift
//  Pharmacin
//
//  Created by Devin Maleke on 02/12/23.
//

import SwiftUI

struct PopUpSeleseaiPembayaran: View {
    var body: some View {
        VStack{
            Text("Pembayaran Berhasil")
                .font(.custom("PlusJakartaSans-Bold", size: 24))
                
            
            Spacer()
            
            
            Divider()
            
            Button{
                print("Selesai")
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
        .frame(width: 542, height: 522)
        .background(.white)
        .cornerRadius(10)
    }
}

#Preview {
    PopUpSeleseaiPembayaran()
}
