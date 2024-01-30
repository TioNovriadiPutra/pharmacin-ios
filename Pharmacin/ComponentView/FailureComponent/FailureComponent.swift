//
//  FailureComponent.swift
//  Pharmacin
//
//  Created by Devin Maleke on 26/01/24.
//

import SwiftUI

struct FailureComponent: View {
    var body: some View {
        HStack{
            
            ZStack{
                Circle()
                    .frame(width: 32, height: 32)
                    .foregroundColor(Color("Red"))
                Image("FailureCheck")
            }
            .padding(.leading,20)
           
            Text("Internal Server Error")
                .font(.custom("PlusJakartaSans-Medium", size: 14))
                .foregroundColor(Color("RegularText"))
                .padding(.leading,50)
            Spacer()
        }
        .frame(width: 322, height: 52)
        .background(Color(red: 1, green: 0.89, blue: 0.89))
        .cornerRadius(14)
        .overlay(
        RoundedRectangle(cornerRadius: 14)
        .inset(by: 0.50)
        .stroke(Color(red: 0.85, green: 0.37, blue: 0.37), lineWidth: 0.50)
        )
       
    }
    
}

#Preview {
    FailureComponent()
}
