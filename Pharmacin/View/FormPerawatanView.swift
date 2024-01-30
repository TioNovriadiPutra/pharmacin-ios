//
//  FormPerawatanView.swift
//  Pharmacin
//
//  Created by Devin Maleke on 30/01/24.
//

import SwiftUI

struct FormPerawatanView: View {
    
    @State private var isAsessment = true
    @State private var isPengajuanObat = false
    @State private var isTindakan = false
    @State private var isLaboratorium = false
    
    var body: some View {
        NavigationStack{
            GeometryReader { geometry in
                ZStack{
                    Color(red: 0.98, green: 0.98, blue: 0.99)
                        .ignoresSafeArea()
                    
                    HStack{
                    VStack(alignment: .leading){
                        
                        HStack{
                            Image("BackButton")
                            
                            
                            Spacer()
                            
                            Text("Form Perawatan")
                                .font(.custom("PlusJakartaSans-Medium", size: 16))
                                .foregroundColor(Color("RegularText"))
                            
                            Spacer()
                            
                            Image("CheckGreen")
                            
                        }
                        .padding()
                        .background()
                        .frame(height: 44)
                        .frame(width: UIScreen.main.bounds.size.width - 100)
                        .cornerRadius(10)
                        
                        
                        FormPerawatanHeader()
                        
                        HStack(spacing:16){
                            Button(action: {
                                isAsessment = true
                                isPengajuanObat = false
                                isTindakan = false
                                isLaboratorium = false
                                print("Assesment")
                            }) {
                                Text("Assesment")
                                    .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                    .foregroundColor(isAsessment ? Color(.white) : Color("LightGray"))
                                    .frame(height: 44)
                                    .frame(width: UIScreen.main.bounds.size.width * 0.25 - 38)
                                    .background(isAsessment ? Color("Green") : Color(Color(red: 0.94, green: 0.94, blue: 0.94)))
                                    .cornerRadius(10)
                            }
                            
                            
                            Button(action: {
                                isAsessment = false
                                isPengajuanObat = true
                                isTindakan = false
                                isLaboratorium = false
                                print("Pengajuan Obat")
                            }) {
                                Text("Pengajuan Obat")
                                    .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                    .foregroundColor(isPengajuanObat ? Color(.white) : Color("LightGray"))
                                    .frame(height: 44)
                                    .frame(width: UIScreen.main.bounds.size.width * 0.25 - 38)
                                    .background(isPengajuanObat ? Color("Green") : Color(Color(red: 0.94, green: 0.94, blue: 0.94)))
                                    .cornerRadius(10)
                            }
                            
                            Button(action: {
                                isAsessment = false
                                isPengajuanObat = false
                                isTindakan = true
                                isLaboratorium = false
                                print("Tindakan")
                            }) {
                                Text("Tindakan")
                                    .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                    .foregroundColor(isTindakan ? Color(.white) : Color("LightGray"))
                                    .frame(height: 44)
                                    .frame(width: UIScreen.main.bounds.size.width * 0.25 - 38)
                                    .background(isTindakan ? Color("Green") : Color(Color(red: 0.94, green: 0.94, blue: 0.94)))
                                    .cornerRadius(10)
                            }
                            
                            Button(action: {
                                isAsessment = false
                                isPengajuanObat = false
                                isTindakan = false
                                isLaboratorium = true
                                print("Laboratorium")
                            }) {
                                Text("Laboratorium")
                                    .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                    .foregroundColor(isLaboratorium ? Color(.white) : Color("LightGray"))
                                    .frame(height: 44)
                                    .frame(width: UIScreen.main.bounds.size.width * 0.25 - 38)
                                    .background(isLaboratorium ? Color("Green") : Color(Color(red: 0.94, green: 0.94, blue: 0.94)))
                                    .cornerRadius(10)
                            }
                        }
                        
                        ScrollView{
                            
                            if isAsessment {
                                AssesmentList()
                            } else if isPengajuanObat {
                                PengajuanObatList()
                            } else if isTindakan{
                                TindakanList()
                            } else if isLaboratorium{
                                LaboratoriumList()
                            }
                        }.clipShape(.rect)
                        
                        
                        Spacer()
                        
                        
                    }
                    Spacer()
                }
                
                
               
                .padding()
            }
            
        }
            }
        }
    }


struct Form_PeawatanView: PreviewProvider {
    static var previews: some View {
        FormPerawatanView()
        FormPerawatanView().previewInterfaceOrientation(.landscapeRight)
    }
}
