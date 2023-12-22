//
//  ObatKelolaItemListTable.swift
//  Pharmacin
//
//  Created by Devin Maleke on 05/12/23.
//

import SwiftUI

struct ObatKelolaItemListTable: View {
    @Binding var showDetailObatView : Bool
    @Binding var selecetedObat: Obat?
    let obat: Obat
    
    var body: some View {
        HStack {
            Button(action: {
                showDetailObatView = true
                selecetedObat = obat
            }){
                Spacer()
                Text("\(obat.namaObat)")
                    .font(.custom("PlusJakartaSans-Regular", size: 14))
                    .foregroundColor(Color("RegularText"))
                    .frame(width: 180, alignment: .leading)
                Spacer()
                Text("\(obat.namaGenerik)")
                    .font(.custom("PlusJakartaSans-Regular", size: 14))
                    .foregroundColor(Color("RegularText"))
                    .frame(width: 180, alignment: .leading)
                Spacer()
                Text("\(obat.Kategori)")
                    .font(.custom("PlusJakartaSans-Regular", size: 14))
                    .foregroundColor(Color("RegularText"))
                    .frame(width: 120, alignment: .leading)
                Spacer()
                Text("\(obat.Rak)")
                    .font(.custom("PlusJakartaSans-Regular", size: 14))
                    .foregroundColor(Color("RegularText"))
                    .frame(width: 50, alignment: .leading)
                Spacer()
                Text("\(obat.HargaBeli)")
                    .font(.custom("PlusJakartaSans-Regular", size: 14))
                    .foregroundColor(Color("RegularText"))
                    .frame(width: 120, alignment: .leading)
                Spacer()
                Text("\(obat.HargaJual)")
                    .font(.custom("PlusJakartaSans-Regular", size: 14))
                    .foregroundColor(Color("RegularText"))
                    .frame(width: 120, alignment: .leading)
                Spacer()
                Text("\(obat.Takaran)")
                    .font(.custom("PlusJakartaSans-Regular", size: 14))
                    .foregroundColor(Color("RegularText"))
                    .frame(width: 100, alignment: .leading)
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
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ObatKelolaItemListTable(showDetailObatView: .constant(true), selecetedObat: .constant(nil), obat: Obat.obatSample)
}
