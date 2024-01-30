//
//  TambahTindakan.swift
//  Pharmacin
//
//  Created by Devin Maleke on 30/01/24.
//

import SwiftUI

struct TambahTindakan: View {
    @State private var searchName: String = ""
    var body: some View {
        VStack{
            HStack {
                TextField("Masukan Obat", text: $searchName)
                    .padding()
                    .autocapitalization(.none)
                    .font(.custom("PlusJakartaSans-Medium", size: 14))
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(red: 0.93, green: 0.93, blue: 0.96))
                    )
                    .frame(width: 390, height: 38)
                    .font(.custom("PlusJakartaSans-Regular", size: 14))
                    .foregroundColor(Color("RegularText"))
                    .frame(width: 315, alignment: .leading)
                    .padding(.leading,12)
                
                
                 Spacer()
                
                Text("DD-MM-YYYY")
                    .font(.custom("PlusJakartaSans-Regular", size: 14))
                    .foregroundColor(Color("RegularText"))
                    .frame(width: 120, alignment: .leading)
                
                
                
                
                Spacer()
                
                Text("DD-MM-YYYY")
                    .font(.custom("PlusJakartaSans-Regular", size: 14))
                    .foregroundColor(Color("RegularText"))
                    .frame(width: 120, alignment: .leading)
                
                
                
                
                Spacer()
                
                Button{
                    print("Cancel")
                }label: {
                    Text("X")
                        .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                        .foregroundColor(.white)
                        .frame(width: 32, alignment: .center)
                        .frame(height: 32)
                        .background(Color("Red"))
                        .cornerRadius(10)
                    
                }.frame(width: 80, alignment: .leading)
            }
       
        .frame(width: UIScreen.main.bounds.size.width - 110)
    }
        
    }
}

struct TambahTindakan_Previews: PreviewProvider {
    static var previews: some View {
        TindakanList().previewInterfaceOrientation(.landscapeRight)
    }
}
