//
//  HasilAssesmentAkhirList.swift
//  Pharmacin
//
//  Created by Devin Maleke on 30/01/24.
//

import SwiftUI

struct HasilAssesmentAkhirList: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Hasil Assesment Akhir")
                .font(.custom("PlusJakartaSans-Semibold", size: 18))
                .foregroundColor(Color("Subtitle"))
                
            
            VStack{
                HStack {
                    Text("No. Diagnosa")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 130, alignment: .leading)
                    Spacer()
                    Text("Tanggal")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 100, alignment: .leading)
                    Spacer()
                    Text("Diagnosa")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 130, alignment: .leading)
                    Spacer()
                    Text("Subjective")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 130, alignment: .leading)
                    Spacer()
                    Text("Objective")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 130, alignment: .leading)
                    Spacer()
                    Text("Assesment")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 130, alignment: .leading)
                    Spacer()
                    
                    Text("Plan")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 130, alignment: .leading)
                    Spacer()
                    Text("Vital Sign")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 130, alignment: .leading)
                }
            }
            .padding()
            .frame(height: 54)
            .frame(width: UIScreen.main.bounds.size.width - 100)
            .background(Color(red: 0.98, green: 0.98, blue: 0.99))
            .cornerRadius(10)
            
            
            
            VStack (spacing:20){
                
                HasilAssesmentAkhirListTable()
                HasilAssesmentAkhirListTable()
                HasilAssesmentAkhirListTable()
                
                
                Spacer()
            }
            
        }
        
        .frame(width: UIScreen.main.bounds.size.width - 100)
        
        .background(.white)
        
        .cornerRadius(10)
    }
}

struct HasilAssesmentAkhirList_Previews: PreviewProvider {
    static var previews: some View {
        HasilAssesmentAkhirList().previewInterfaceOrientation(.landscapeRight)
        
    }
}
