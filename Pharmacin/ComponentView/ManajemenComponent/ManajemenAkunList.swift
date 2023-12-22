//
//  ManajemenAkunList.swift
//  Pharmacin
//
//  Created by Devin Maleke on 19/12/23.
//

import SwiftUI

struct ManajemenAkunList: View {
    var body: some View {
        VStack {
            VStack{
                HStack {
                    Text("Email")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 180, alignment: .leading)
                    Spacer()
                    Text("Nama")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 200, alignment: .leading)
                  
                    Spacer()
                    Text("Tindakan")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 120, alignment: .center)
                }
            }
            .padding()
            .frame(height: 54)
            .frame(width: UIScreen.main.bounds.size.width - 100)
            .background(.white)
            .cornerRadius(10)
            
            
            
            VStack {
                
                ManajemenAkunListTable()
                ManajemenAkunListTable()
                ManajemenAkunListTable()
                
                
                Spacer()
            }
            .frame(height: 684)
            .frame(width: UIScreen.main.bounds.size.width - 100)
            .background(.white)
            .cornerRadius(10)
        }
    }
}

struct ManajemenAkunList_Preview: PreviewProvider {
    static var previews: some View {
        ManajemenAkunView()
        ManajemenAkunView().previewInterfaceOrientation(.landscapeRight)
        
    }
}

