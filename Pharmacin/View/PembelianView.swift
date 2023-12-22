//
//  PembelianView.swift
//  Pharmacin
//
//  Created by Devin Maleke on 07/12/23.
//

import SwiftUI

struct PembelianView: View {
    @State private var searchName: String = ""
    @State private var searchPayment: String = ""
    @Binding var showSuccessPopup: Bool
    
    let searchPabrikList = ["Red", "Green", "Blue", "Black", "Tartan"]
    @State private var selectionPabrik = ""
    
    
    var body: some View {
        NavigationStack{
            GeometryReader{ geometry in
            ZStack{
                Color(red: 0.98, green: 0.98, blue: 0.99)
                    .ignoresSafeArea()
                
                VStack(alignment: .leading, spacing: 12){
                    HStack(spacing: 14){
                        Text("Pembelian")
                            .font(.custom("PlusJakartaSans-Bold", size: 24))
                            .foregroundColor(Color("Subtitle"))
                         
                        
                        Spacer()
                        Button{
                            print("Cancel")
                        }label: {
                            Text("Cancel")
                                .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                .foregroundColor(.white)
                                .frame(width: 180, alignment: .center)
                                .frame(height: 44)
                                .background(Color("Red"))
                                .cornerRadius(10)
                        }
                        
                        Button{
                            showSuccessPopup = true
                        }label: {
                            Text("Confirm")
                                .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                .foregroundColor(.white)
                                .frame(width: 180, alignment: .center)
                                .frame(height: 44)
                                .background(Color("Green"))
                                .cornerRadius(10)
                                .padding(.trailing, 70)
                        }
                    }
                    
                    HStack(spacing:12){
                        VStack(alignment: .leading, spacing: 10){
                            
                            Text("Nama Pabrik")
                                .font(.custom("PlusJakartaSans-medium", size: 16))
                                .foregroundColor(Color("LightGray"))
                            HStack{
                                if selectionPabrik.isEmpty {
                                    Text("Pilih Pabrik")
                                        .font(.custom("PlusJakartaSans-Regular", size: 14))
                                        .foregroundColor(Color("LG"))
                                } else {
                                    Text(selectionPabrik)
                                }
                                Spacer()
                                Menu {
                                    ForEach(searchPabrikList, id: \.self) { option in
                                        Button(action: {
                                            selectionPabrik = option
                                        }) {
                                            Text(option)
                                        }
                                    }
                                } label: {
                                    Image("ArrowDown")
                                }
                                .menuStyle(BorderlessButtonMenuStyle())
                                
                                
                            }
                            .padding()
                            .frame(width: 378, height: 38)
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color(red: 0.93, green: 0.93, blue: 0.96))
                            )
                            
                            .padding(.bottom,10)
                            Text("Tanggal")
                                .font(.custom("PlusJakartaSans-medium", size: 16))
                                .foregroundColor(Color("LightGray"))
                            
                            Text("DD-MM-YYYY")
                                .font(.custom("PlusJakartaSans-Regular", size: 14))
                                .foregroundColor(Color("RegularText"))
                                .padding() // Menambahkan padding jika diperlukan
                                .frame(width: 378, alignment: .leading) // Mengatur agar teks berada di leading
                                .frame(height:38)
                                .background(Color(red: 0.98, green: 0.98, blue: 0.99))
                                .cornerRadius(8)
                            
                            
                            Spacer()
                        }
                        .frame(width: 414, height: 190)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        
                        VStack(alignment: .leading, spacing: 10){
                            Text("Total")
                                .font(.custom("PlusJakartaSans-medium", size: 16))
                                .foregroundColor(Color("LightGray"))
                            
                            Text("222.000.000")
                                .font(.custom("PlusJakartaSans-Regular", size: 14))
                                .foregroundColor(Color("RegularText"))
                               
                                .frame(maxWidth: .infinity, alignment: .leading) // Mengatur agar teks berada di leading
                                .padding() // Menambahkan padding jika diperlukan
                                .background(Color(red: 0.98, green: 0.98, blue: 0.99))
                                .frame(height: 36)
                                .cornerRadius(4)
                            
                            Spacer()
                        }
                        .frame(height: 190)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(12)
                        .padding(.trailing,70)
                    }
                    
                    TambahPembelianList()
                    
                      
                    
                    
                    Spacer()
                }
                .padding()
                
                
            }
        }
            
        }
    }
    
}

struct Pembelian_Preview: PreviewProvider {
    static var previews: some View {
        PembelianView(showSuccessPopup: .constant(true))
        PembelianView(showSuccessPopup: .constant(true)).previewInterfaceOrientation(.landscapeRight)
        
    }
}
