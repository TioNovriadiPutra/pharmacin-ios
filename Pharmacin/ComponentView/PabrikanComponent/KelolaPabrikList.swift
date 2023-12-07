//
//  KelolaPabrikList.swift
//  Pharmacin
//
//  Created by Devin Maleke on 07/12/23.
//

import SwiftUI

struct KelolaPabrikList: View {
    var body: some View {
        VStack {
            VStack{
                HStack {
                    Text("ID")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 100, alignment: .leading)
                    Spacer()
                    Text("Nama Pabrik")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 200, alignment: .leading)
                    Spacer()
                    Text("Email")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 185, alignment: .leading)
                    Spacer()
                    Text("Nomor Telepon")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 150, alignment: .leading)
                    Spacer()
                    Text("Tindakan")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 80, alignment: .center)
                    
                }
            }
            .padding()
            .frame(width: 1098, height: 54)
            .background(.white)
            .cornerRadius(10)
            
            
            
            VStack {
                
                KelolaPabrikListTable()
                KelolaPabrikListTable()
                KelolaPabrikListTable()
                
                
                Spacer()
            }
            .frame(width: 1098, height: 684)
            .background(.white)
            .cornerRadius(10)
        }
    }
}

#Preview {
    KelolaPabrikList()
}
