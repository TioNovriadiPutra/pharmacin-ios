//
//  DashboardCart.swift
//  Pharmacin
//
//  Created by Devin Maleke on 25/11/23.
//

import SwiftUI

struct DashboardCart: View {
    var body: some View {
        HStack{
            VStack (alignment: .leading, spacing: 10)
            {
                Text("Total Transaksi Jual")
                    .font(.custom("PlusJakartaSans-Medium", size: 14))
                    .foregroundColor(Color("LightGray"))
                Text("190")
                    .font(.custom("PlusJakartaSans-semiBold", size: 20))
                    .foregroundColor(Color("Subtitle"))
                    .padding(.top,1)
            }
            Spacer()
            Image("TransactionIcon")
        }
        .padding(.horizontal,25)
        .frame(width: 264, height: 112)
        .background(Color(.white))
        .cornerRadius(10)
        
    }
    
}


#Preview {
    DashboardCart()
}
