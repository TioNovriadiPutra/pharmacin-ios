//
//  ObatKelolaItemList.swift
//  Pharmacin
//
//  Created by Devin Maleke on 05/12/23.
//

import SwiftUI

struct ObatKelolaItemList: View {
    @ObservedObject var obatViewModel = ObatViewModel()
    @Binding var showDetailObatView : Bool
    @Binding var selectedObat: Obat?
    
    
    var body: some View {
        VStack {
            VStack{
                HStack {
                    Spacer()
                    Text("Nama Item")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 180, alignment: .leading)
                    Spacer()
                    Text("Nama Generik")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 180, alignment: .leading)
                    Spacer()
                    Text("Kategori")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 120, alignment: .leading)
                    Spacer()
                    Text("Rak")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 50, alignment: .leading)
                    Spacer()
                    Text("Harga Beli") 
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 120, alignment: .leading)
                    Spacer()
                    Text("Harga Jual")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 120, alignment: .leading)
                    Spacer()
                    Text("Takaran")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 100, alignment: .leading)
                    Spacer()
                    Text("Tindakan")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 80, alignment: .center)
                    
                    Spacer()
                }
            }
            .padding()
            .frame(height: 54)
            .frame(width: UIScreen.main.bounds.size.width - 100)
            .background(.white)
            .cornerRadius(10)
            
            
            
            VStack {
                
                ForEach(obatViewModel.obatList, id: \.id) { obat in
                    ObatKelolaItemListTable(showDetailObatView: $showDetailObatView, selecetedObat: $selectedObat, obat: obat)
                }

                
                
                Spacer()
            }
            .frame(height: 684)
            .frame(width: UIScreen.main.bounds.size.width - 100)
            .background(.white)
            .cornerRadius(10)
        }
    }
}

struct Obat_KelolaItemList: PreviewProvider {
    static var previews: some View {
        ObatKelolaItemView(showDetailObatView: .constant(true), selecetedObat: .constant(nil), showTambahObatPopUp: .constant(true))
        ObatKelolaItemView(showDetailObatView: .constant(true), selecetedObat: .constant(nil), showTambahObatPopUp: .constant(true)).previewInterfaceOrientation(.landscapeRight)
    }
}
