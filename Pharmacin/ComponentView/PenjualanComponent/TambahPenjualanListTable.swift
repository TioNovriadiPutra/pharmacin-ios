//
//  TambahPenjualanListTable.swift
//  Pharmacin
//
//  Created by Devin Maleke on 13/12/23.
//

import SwiftUI

struct TambahPenjualanListTable: View {
    @State private var numberOfTables = 1
    var body: some View {
        var tableIndices: [Int] {
            Array(0..<numberOfTables)
        }
        VStack{
            ScrollView{
                ForEach(tableIndices, id: \.self) { index in
                    
                    TambahPenjualanTable {
                        // Closure untuk menghapus tabel dari ContentView
                        numberOfTables -= 1
                    }
                    Divider()
                        .padding()
                    
                }
                .padding()
            }
            Button(action: {
                // Tambah satu TambahPenjualanTable()
                numberOfTables += 1
            }){
                Text("Add Item")
                    .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                    .foregroundColor(.white)
                    .frame(width: 155, alignment: .center)
                    .frame(height: 44)
                    .background(Color("DarkBlue"))
                    .cornerRadius(10)
                    .padding(.top,20)
            }
            
            .frame(width: UIScreen.main.bounds.size.width - 120)
            
        }
    }
}

struct TambahPenjualanListTable_Preview: PreviewProvider {
    static var previews: some View {
        TambahPenjualanListTable()
        TambahPenjualanListTable().previewInterfaceOrientation(.landscapeRight)
        
    }
}
