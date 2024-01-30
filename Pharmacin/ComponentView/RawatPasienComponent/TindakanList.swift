//
//  TindakanList.swift
//  Pharmacin
//
//  Created by Devin Maleke on 30/01/24.
//

import SwiftUI

struct TindakanList: View {
    var body: some View {
    
        VStack(alignment: .leading, spacing: 20) {
            
            HStack {
                Text("Tindakan")
                    .font(.custom("PlusJakartaSans-Medium", size: 16))
                    .foregroundColor(Color("LightGray"))
                    .frame(width: 315, alignment: .leading)
                Spacer()
                Text("Kode")
                    .font(.custom("PlusJakartaSans-Medium", size: 16))
                    .foregroundColor(Color("LightGray"))
                    .frame(width: 130, alignment: .leading)
                Spacer()
                Text("Biaya")
                    .font(.custom("PlusJakartaSans-Medium", size: 16))
                    .foregroundColor(Color("LightGray"))
                    .frame(width: 100, alignment: .leading)
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
            
           
            
               
            
            TindakanListTable()
            
            Spacer()
        }
        .padding()
        
        .frame(width: UIScreen.main.bounds.size.width - 100)
        
        .background(Color.white)
        .cornerRadius(10)
        
    
    

}
}

struct TindakanList_Previews: PreviewProvider {
    static var previews: some View {
        TindakanList().previewInterfaceOrientation(.landscapeRight)
    }
}
