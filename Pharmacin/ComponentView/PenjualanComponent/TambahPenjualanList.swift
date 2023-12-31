//
//  TambahPenjualanList.swift
//  Pharmacin
//
//  Created by Devin Maleke on 13/12/23.
//

import SwiftUI

struct TambahPenjualanList: View {
    @State private var searchName: String = ""
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .center, spacing: 20) {
                HStack {
                    Text("Item")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 250, alignment: .leading)
                    Spacer()
                    Text("Stok")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 100, alignment: .center)
                    Spacer()
                    Text("QTY")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 100, alignment: .leading)
                    Spacer()
                    Text("Harga")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 180, alignment: .leading)
                    Spacer()
                    Text("Diskon")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 100, alignment: .leading)
                    Spacer()
                    Text("Total")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 180, alignment: .leading)
                    Spacer()
                    Text("Tindakan")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 80, alignment: .leading)
                }
                .padding(.horizontal)
                .frame(height: 54)
                .frame(width: UIScreen.main.bounds.size.width - 120)
                
                .background(Color(red: 0.98, green: 0.98, blue: 0.99))
                .cornerRadius(10)
                
               
                
                   
                
                TambahPenjualanListTable()
                
                Spacer()
            }
            .padding()
            .frame(maxHeight: .infinity)
            .frame(width: UIScreen.main.bounds.size.width - 105)
            
            .background(Color.white)
            .cornerRadius(12)
            
        }
        
        
        
        
        
       
        
        
        
        
        
    }
}

struct TambahPenjualanList_Preview: PreviewProvider {
    static var previews: some View {
        TambahPenjualanList()
        TambahPenjualanList().previewInterfaceOrientation(.landscapeRight)
        PenjualanView(showSuccessPopup: .constant(true)).previewInterfaceOrientation(.landscapeRight)
        
    }
}

