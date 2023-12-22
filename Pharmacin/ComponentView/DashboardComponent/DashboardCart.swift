//
//  DashboardCart.swift
//  Pharmacin
//
//  Created by Devin Maleke on 25/11/23.
//

import SwiftUI

struct DashboardCart: View {
    let title: String
    let value: String
    let image: String
    let sizeValue: Int
    
    init(_ text: String, value:String, image:String, sizeValue: Int) {
        self.title = text
        self.value = value
        self.image = image
        self.sizeValue = sizeValue
    }
    
    var body: some View {
        HStack{
            VStack (alignment: .leading, spacing: 10)
            {
                Text(title)
                    .font(.custom("PlusJakartaSans-Medium", size: 14))
                    .foregroundColor(Color("LightGray"))
                Text(value)
                    .font(.custom("PlusJakartaSans-semiBold", size: CGFloat(sizeValue)))
                    .foregroundColor(Color("Subtitle"))
                    .padding(.top,1)
            }
            Spacer()
            Image(image)
        }
        .padding(.horizontal,25)
        .frame(height: 112)
        .frame(width: UIScreen.main.bounds.size.width * 0.25 - 38)
        .background(Color(.white))
        .cornerRadius(10)
        
    }
    
}


#Preview {
    DashboardCart("Total Transaksi Jual", value: "190", image: "TransactionIcon", sizeValue: 20)
}
