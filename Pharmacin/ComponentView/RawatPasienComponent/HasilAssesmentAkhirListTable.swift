//
//  HasilAssesmentAkhirListTable.swift
//  Pharmacin
//
//  Created by Devin Maleke on 30/01/24.
//

import SwiftUI

struct HasilAssesmentAkhirListTable: View {
    var body: some View {
        HStack {
            Text("REG/20230910/0012")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 130, alignment: .leading)
            Spacer()
            Text("DD/MM/YYY")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 100, alignment: .leading)
            Spacer()
            Text("Fever, Unspecified")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 130, alignment: .leading)
            Spacer()
            Text("Pasien demam selama 7 hari")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 130, alignment: .leading)
            Spacer()
            Text("Suhu 90 derajat")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 130, alignment: .leading)
            Spacer()
            Text("Medikasi, Pemeriasaan Fisik")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 130, alignment: .leading)
            Spacer()
            Text("Beri obat penurun demam")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 130, alignment: .leading)
            Spacer()
            Text("BB: 70 Kg, TBL: 170 Cm, Suhu: 39 °C, Tensi: 120/70 MmHg")
                .font(.custom("PlusJakartaSans-Regular", size: 14))
                .foregroundColor(Color("RegularText"))
                .frame(width: 130, alignment: .leading)
            
            
           
        }
        .padding()
        .frame(width: UIScreen.main.bounds.size.width - 100)
        .background(Color(red: 0.99, green: 0.99, blue: 1))
        .cornerRadius(10)
                      
        
        
        
    }
}

#Preview {
    HasilAssesmentAkhirListTable()
}
