//
//  ObatNonRacikanList.swift
//  Pharmacin
//
//  Created by Devin Maleke on 30/01/24.
//

import SwiftUI

struct ObatNonRacikanList: View {
    var body: some View {
   
        VStack(alignment: .leading, spacing: 20) {
            
            Text("Obat Non Racikan")
                .font(.custom("PlusJakartaSans-Semibold", size: 18))
                .foregroundColor(Color("Subtitle"))
                .padding(.leading,16)
            
            HStack {
                Text("Item")
                    .font(.custom("PlusJakartaSans-Medium", size: 16))
                    .foregroundColor(Color("LightGray"))
                    .frame(width: 315, alignment: .leading)
                Spacer()
                Text("Kategori")
                    .font(.custom("PlusJakartaSans-Medium", size: 16))
                    .foregroundColor(Color("LightGray"))
                    .frame(width: 130, alignment: .leading)
                Spacer()
                Text("QTY")
                    .font(.custom("PlusJakartaSans-Medium", size: 16))
                    .foregroundColor(Color("LightGray"))
                    .frame(width: 100, alignment: .leading)
                Spacer()
                Text("Takaran")
                    .font(.custom("PlusJakartaSans-Medium", size: 16))
                    .foregroundColor(Color("LightGray"))
                    .frame(width: 100, alignment: .leading)
                Spacer()
                Text("Aturan Pakai")
                    .font(.custom("PlusJakartaSans-Medium", size: 16))
                    .foregroundColor(Color("LightGray"))
                    .frame(width: 190, alignment: .leading)
                Spacer()
                Text("Tindakan")
                    .font(.custom("PlusJakartaSans-Medium", size: 16))
                    .foregroundColor(Color("LightGray"))
                    .frame(width: 80, alignment: .leading)
            }
            .padding(.horizontal)
            .frame(height: 54)
            .frame(width: UIScreen.main.bounds.size.width - 110)
            
            .background(Color(red: 0.98, green: 0.98, blue: 0.99))
            .cornerRadius(10)
            
           
            
               
            
            ObatNonRacikanListTable()
            
            Spacer()
        }
        .padding()
        .frame(height: 400)
        .frame(width: UIScreen.main.bounds.size.width - 100)
        
        .background(Color.white)
        .cornerRadius(10)
        
    
    

}
}

struct ObatNonRacikanList_Previews: PreviewProvider {
    static var previews: some View {
        ObatNonRacikanList().previewInterfaceOrientation(.landscapeRight)
    }
}
