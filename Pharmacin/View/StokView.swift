//
//  StokView.swift
//  Pharmacin
//
//  Created by Devin Maleke on 27/11/23.
//

import SwiftUI

struct StokView: View {
    @State private var searchText: String = ""
    @State private var isPerItemSelected = true
    @State private var isPerBatchSelected = false
    
    var body: some View {
        NavigationStack{
            GeometryReader { geometry in
            ZStack{
                Color(red: 0.98, green: 0.98, blue: 0.99)
                    .ignoresSafeArea()
                
                
                VStack(alignment: .leading){
                    HStack(spacing:14){
                        Text("Stok")
                            .font(.custom("PlusJakartaSans-Bold", size: 24))
                            .foregroundColor(Color("Subtitle"))
                        Text("/ Stok")
                            .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                            .foregroundColor(Color("LightGray"))
                        Spacer()
                        Button(action: {
                            isPerItemSelected = true
                            isPerBatchSelected = false
                            print("Per Item")
                        }) {
                            Text("Per Item")
                                .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                .foregroundColor(isPerItemSelected ? Color(.white) : Color("LightGray"))
                                .frame(width: 148, height: 44)
                                .background(isPerItemSelected ? Color("Green") : Color(Color(red: 0.94, green: 0.94, blue: 0.94)))
                                .cornerRadius(10)
                        }
                        
                        
                        Button(action: {
                            isPerBatchSelected = true
                            isPerItemSelected = false
                            print("Per Batch")
                        }) {
                            Text("Per Batch")
                                .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                .foregroundColor(isPerBatchSelected ? Color(.white) : Color("LightGray"))
                                .frame(width: 148, height: 44)
                                .background(isPerBatchSelected ? Color("Green") : Color(Color(red: 0.94, green: 0.94, blue: 0.94)))
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
                    
                    if isPerItemSelected {
                        StokListItem()
                    } else if isPerBatchSelected {
                        StokListBatch()
                        
                    }
                    
                    Spacer()
                }
                .padding()
                
                
            }
        }
        }
    }
}


struct Stok_Preview: PreviewProvider {
    static var previews: some View {
        StokView()
        StokView().previewInterfaceOrientation(.landscapeRight)
        
    }
}
