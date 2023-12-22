//
//  StokOpnameView.swift
//  Pharmacin
//
//  Created by Devin Maleke on 02/12/23.
//

import SwiftUI

struct StokOpnameView: View {
    @State private var searchText: String = ""
    
    var body: some View {
        
        NavigationStack{
            GeometryReader { geometry in
            ZStack{
                Color(red: 0.98, green: 0.98, blue: 0.99)
                    .ignoresSafeArea()
                VStack(alignment:.leading){
                    HStack(spacing:14){
                        Text("Stok")
                            .font(.custom("PlusJakartaSans-Bold", size: 24))
                            .foregroundColor(Color("Subtitle"))
                        Text("/ Opname")
                            .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                            .foregroundColor(Color("LightGray"))
                        Spacer()
                        
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
                    
                    StokOpnameList()
                    Spacer()
                }
                .padding()
            }
        }
        }
    }
}

struct Stok_OpnameView: PreviewProvider {
    static var previews: some View {
        StokOpnameView()
        StokOpnameView().previewInterfaceOrientation(.landscapeRight)        
    }
}
