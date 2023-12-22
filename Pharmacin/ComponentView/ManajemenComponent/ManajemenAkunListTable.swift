//
//  ManajemenAkunListTable.swift
//  Pharmacin
//
//  Created by Devin Maleke on 19/12/23.
//

import SwiftUI

struct ManajemenAkunListTable: View {
    var body: some View {
        HStack {

            Text("phar@gmail.com")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 180, alignment: .leading)
            Spacer()
            Text("Lorem Ipsum")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 200, alignment: .leading)
            Spacer()
            HStack{
                Button{
                    print("Check")
                }label: {
                    Image("EditYellow")
                        .resizable()
                        .frame(width: 32, height: 32)
                }
                Button{
                    print("Check")
                }label: {
                    Image("CrossRed")
                        .resizable()
                        .frame(width: 32, height: 32)
                }
            }
            .frame(width: 120, alignment: .center)

        }
        .padding()
    }}

struct ManajemenAkunListTable_Preview: PreviewProvider {
    static var previews: some View {
        ManajemenAkunView()
        ManajemenAkunView().previewInterfaceOrientation(.landscapeRight)
        
    }
}

