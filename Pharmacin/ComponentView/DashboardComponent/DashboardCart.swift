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
            VStack (alignment: .leading){
                Text("Total Transaksi Jual")
                Text("190")
            }
            Image("TransactionIcon")
        }
        .padding()
        .frame(width: 264, height: 112)
        .background(Color(.white))
        .cornerRadius(10)
        
    }
}


#Preview {
    DashboardCart()
}
