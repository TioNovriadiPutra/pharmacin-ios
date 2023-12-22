//
//  KelolaPabrikList.swift
//  Pharmacin
//
//  Created by Devin Maleke on 07/12/23.
//

import SwiftUI

struct KelolaPabrikList: View {
    @StateObject var pabrikanViewModel = PabrikanViewModel()
    @Binding var showDetailPabrikView : Bool
    @Binding var selectedPabrikan: Pabrikan?
    
    var body: some View {
        
        VStack {
            VStack{
                HStack {
                    Text("ID")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 100, alignment: .leading)
                    Spacer()
                    Text("Nama Pabrik")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 200, alignment: .leading)
                    Spacer()
                    Text("Email")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 185, alignment: .leading)
                    Spacer()
                    Text("Nomor Telepon")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 150, alignment: .leading)
                    Spacer()
                    Text("Tindakan")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                        .frame(width: 80, alignment: .center)
                    
                }
            }
            .padding()
            .frame(height: 54)
            .frame(width: UIScreen.main.bounds.size.width - 100)
            .background(.white)
            .cornerRadius(10)
            
            
            
            VStack {
                
                if pabrikanViewModel.pabrikan.count > 0 {
                    ScrollView {
                        ForEach(pabrikanViewModel.pabrikan, id: \.id) { pabrikan in
                            KelolaPabrikListTable(
                                showDetailPabrikView: $showDetailPabrikView,
                                selecetedPabrik: $selectedPabrikan,
                                pabrikan: pabrikan
                            )
                        }
                        Spacer()
                    }
                }
            }
            .frame(height: 684)
            .frame(width: UIScreen.main.bounds.size.width - 100)
            .background(.white)
            .cornerRadius(10)
        }.onAppear {
            pabrikanViewModel.getAllPabrik()
        }
    }
}

#Preview {
    KelolaPabrikList(showDetailPabrikView: .constant(true), selectedPabrikan: .constant(nil))
}
