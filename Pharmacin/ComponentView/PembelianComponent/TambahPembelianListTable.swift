//
//  TambahPembelianListTable.swift
//  Pharmacin
//
//  Created by Devin Maleke on 14/12/23.
//

import SwiftUI

struct TambahPembelianListTable: View {
    var body: some View {
        VStack{
            
            TambahPembelianTable()
            
            Button{
                print("Add Item")
            }label: {
                Text("Add Item")
                    .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                    .foregroundColor(.white)
                    .frame(width: 155, alignment: .center)
                    .frame(height: 44)
                    .background(Color("DarkBlue"))
                    .cornerRadius(10)
                    .padding(.top,20)
            }
           
            .frame(width: UIScreen.main.bounds.size.width - 120)
            
        }

    }
}

#Preview {
    TambahPembelianListTable()
}
