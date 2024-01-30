//
//  SuccessComponent.swift
//  Pharmacin
//
//  Created by Devin Maleke on 26/01/24.
//

import SwiftUI

struct SuccessComponent: View {
    var body: some View {
        HStack{
            
            ZStack{
                Circle()
                    .frame(width: 32, height: 32)
                    .foregroundColor(Color("Green"))
                Image("SuccessCheck")
            }
            .padding(.leading,20)
           
            Text("Registrasi Berhasil")
                .font(.custom("PlusJakartaSans-Medium", size: 14))
                .foregroundColor(Color("RegularText"))
                .padding(.leading,50)
            Spacer()
        }
        .frame(width: 322, height: 52)
        
        .background(Color(red: 0.84, green: 0.98, blue: 0.85))
        .cornerRadius(14)
        .overlay(
        RoundedRectangle(cornerRadius: 14)
        .inset(by: 0.50)
        .stroke(Color(red: 0.34, green: 0.75, blue: 0.39), lineWidth: 0.50)
        )
       
    }
}

#Preview {
    SuccessComponent()
}
