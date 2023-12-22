//
//  NotifikasiView.swift
//  Pharmacin
//
//  Created by Devin Maleke on 07/12/23.
//

import SwiftUI

struct NotifikasiView: View {
    @State private var searchText: String = ""
    @State private var isKadaluarsaSelected = true
    @State private var isStokHabisSelected = false
    
    var body: some View {
        NavigationStack{
            GeometryReader { geometry in
            ZStack{
                Color(red: 0.98, green: 0.98, blue: 0.99)
                    .ignoresSafeArea()
                    HStack{
                        VStack(alignment: .leading){
                            HStack{
                                Text("Notifikasi")
                                    .font(.custom("PlusJakartaSans-Bold", size: 24))
                                    .foregroundColor(Color("Subtitle"))
                                
                                Spacer()
                                Button(action: {
                                    isKadaluarsaSelected = true
                                    isStokHabisSelected = false
                                    print("Kadaluarsa")
                                }) {
                                    Text("Kadaluarsa(20)")
                                        .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                        .foregroundColor(isKadaluarsaSelected ? Color(.white) : Color("LightGray"))
                                        .frame(width: 175, height: 44)
                                        .background(isKadaluarsaSelected ? Color("Green") : Color(Color(red: 0.94, green: 0.94, blue: 0.94)))
                                        .cornerRadius(10)
                                }
                                
                                
                                Button(action: {
                                    isStokHabisSelected = true
                                    isKadaluarsaSelected = false
                                    print("Stok Habis")
                                }) {
                                    Text("Stok Habis(20)")
                                        .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                        .foregroundColor(isStokHabisSelected ? Color(.white) : Color("LightGray"))
                                        .frame(width: 175, height: 44)
                                        .background(isStokHabisSelected ? Color("Green") : Color(Color(red: 0.94, green: 0.94, blue: 0.94)))
                                        .cornerRadius(10)
                                }
                                
                                
                                HStack {
                                    Image(systemName: "magnifyingglass")
                                        .foregroundColor(.gray)
                                        .padding(.leading, 8)
                                    
                                    TextField("Search here...", text: $searchText)
                                        .autocapitalization(.none)
                                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                                    
                                    
                                }
                                
                                .frame(width: 350, height: 44)
                                .background(Color(red: 0.94, green: 0.94, blue: 0.94))
                                .cornerRadius(10)
                                .padding(.trailing,70)
                            }
                            
                            if isKadaluarsaSelected {
                                
                                KadaluarsaList()
                            } else if isStokHabisSelected {
                                StokHabisList()
                                
                            }
                            Spacer()
                        }    
                        .padding()
                        Spacer()
                    }
                
                
            }
        }
        }
    }
}


struct Notifikasi_Preview: PreviewProvider {
    static var previews: some View {
        NotifikasiView()
        NotifikasiView().previewInterfaceOrientation(.landscapeRight)
        
    }
}
