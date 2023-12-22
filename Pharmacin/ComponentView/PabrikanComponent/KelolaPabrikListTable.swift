//
//  KelolaPabrikListTable.swift
//  Pharmacin
//
//  Created by Devin Maleke on 07/12/23.
//

import SwiftUI

struct KelolaPabrikListTable: View {
    @Binding var showDetailPabrikView: Bool
    @Binding var selecetedPabrik: Pabrikan?
    let pabrikan: Pabrikan
    
    var body: some View {
        HStack {
            Button{
                showDetailPabrikView = true
                selecetedPabrik = pabrikan
               
            }label: {
                Text("\(pabrikan.id)")
                    .font(.custom("PlusJakartaSans-Regular", size: 14))
                    .foregroundColor(Color("RegularText"))
                    .frame(width: 100, alignment: .leading)
                Spacer()
                Text("\(pabrikan.clinic_name)")
                    .font(.custom("PlusJakartaSans-Regular", size: 14))
                    .foregroundColor(Color("RegularText"))
                    .frame(width: 200, alignment: .leading)
                Spacer()
                Text("\(pabrikan.clinic_phone)")
                    .font(.custom("PlusJakartaSans-Regular", size: 14))
                    .foregroundColor(Color("RegularText"))
                    .frame(width: 185, alignment: .leading)
                Spacer()
                Text("\(pabrikan.clinic_phone)")
                    .font(.custom("PlusJakartaSans-Regular", size: 14))
                    .foregroundColor(Color("RegularText"))
                    .frame(width: 150, alignment: .leading)
                Spacer()
            }

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
            .frame(width: 80, alignment: .center)
           
        }
        .padding()
    }
    
    
}



//#Preview {
//    KelolaPabrikListTable(showDetailPabrikView: .constant(true), selecetedPabrik: .constant(nil), pabrikan:  Pabrikan(id: "1", namaPabrik: "PabrikA", email: "pabrikA@gmail.com", nomorTelepon: "123456788"))
//}
