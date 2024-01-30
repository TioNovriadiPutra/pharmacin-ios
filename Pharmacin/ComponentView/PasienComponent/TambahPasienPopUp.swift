//
//  TambahPasienPopUp.swift
//  Pharmacin
//
//  Created by Devin Maleke on 04/01/24.
//

import SwiftUI

struct TambahPasienPopUp: View {
    @State private var namaPasien: String = ""
    @State private var nik: String = ""
    @State private var noRM: String = ""
    @State private var tempatLahir: String = ""
    @State private var tanggalLahir: String = ""
    @State private var noHandphone: String = ""
    @State private var alergiObat: String = ""
    
    @State private var selectionJenisKelamin = ""
    @State private var selectionJenisPekerjaan = ""
    @State private var selectionDate = ""
    @State private var selectedDate = Date()
    @State private var currentDate = Date()
    @State private var showDatePicker = false
    
    
    
    let jenisKelaminList = ["Red", "Green", "Blue", "Black", "Tartan"]
    let jenisPekerjaanList = ["Red", "Green", "Blue", "Black", "Tartan"]
    
    //@Binding var showTambahPabrikPopUp : Bool
    
    var body: some View {
        VStack(alignment: .center){
            Spacer()
            HStack{
                Button {
                    //showTambahPabrikPopUp = false
                } label: {
                    Image("BackButton")
                        .padding(.leading,20)
                }
                
                Text("Tambah Pasien")
                    .font(.custom("PlusJakartaSans-Bold", size: 24))
                    .padding(.leading,90)
                
                Spacer()
            }
            .padding(.bottom,50)
            
            ScrollView{
                VStack(alignment: .leading){
                    Text("Nama Pasien")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                    
                    TextField("", text: $namaPasien)
                        .autocapitalization(.none)
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .frame(width: 450, height: 38)
                        .cornerRadius(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .inset(by: 0.50)
                                .stroke(Color(red: 0.93, green: 0.93, blue: 0.96), lineWidth: 0.50)
                        )
                        .padding(.bottom,14)
                    
                    Text("Nomor Induk KTP (NIK)")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                    
                    TextField("", text: $nik)
                        .autocapitalization(.none)
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .frame(width: 450, height: 38)
                        .cornerRadius(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .inset(by: 0.50)
                                .stroke(Color(red: 0.93, green: 0.93, blue: 0.96), lineWidth: 0.50)
                        )
                        .padding(.bottom,14)
                    
                    Text("No.RM")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                    
                    TextField("", text: $noRM)
                        .autocapitalization(.none)
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .frame(width: 450, height: 38)
                        .cornerRadius(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .inset(by: 0.50)
                                .stroke(Color(red: 0.93, green: 0.93, blue: 0.96), lineWidth: 0.50)
                        )
                        .padding(.bottom,14)
                    
                    Text("Jenis Kelamin")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                    
                    HStack{
                        if selectionJenisKelamin.isEmpty {
                            Text("Pilih Jenis Kelamin")
                                .font(.custom("PlusJakartaSans-Regular", size: 14))
                                .foregroundColor(Color("LG"))
                        } else {
                            Text(selectionJenisKelamin)
                        }
                        Spacer()
                        Menu {
                            ForEach(jenisKelaminList, id: \.self) { option in
                                Button(action: {
                                    selectionJenisKelamin = option
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
                    .frame(width: 450, height: 38)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(red: 0.93, green: 0.93, blue: 0.96), lineWidth: 0.50)
                    )
                    .padding(.bottom,14)
                    
                    Text("Jenis Pekerjaan")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                    
                    HStack{
                        if selectionJenisPekerjaan.isEmpty {
                            Text("Pilih Jenis Pekerjaan")
                                .font(.custom("PlusJakartaSans-Regular", size: 14))
                                .foregroundColor(Color("LG"))
                        } else {
                            Text(selectionJenisPekerjaan)
                        }
                        Spacer()
                        Menu {
                            ForEach(jenisPekerjaanList, id: \.self) { option in
                                Button(action: {
                                    selectionJenisPekerjaan = option
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
                    .frame(width: 450, height: 38)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(red: 0.93, green: 0.93, blue: 0.96), lineWidth: 0.50)
                    )
                    
                    .padding(.bottom,14)
                    
                    Text("Tempat Lahir")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                    
                    TextField("", text: $tempatLahir)
                        .autocapitalization(.none)
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .frame(width: 450, height: 38)
                        .cornerRadius(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .inset(by: 0.50)
                                .stroke(Color(red: 0.93, green: 0.93, blue: 0.96), lineWidth: 0.50)
                        )
                        .padding(.bottom,14)
                    
                    Text("Tanggal Lahir")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                    
                    
                        HStack{
                            if selectedDate == currentDate{
                                Text("DD/MM/YYYY")
                                    .font(.custom("PlusJakartaSans-Regular", size: 14))
                                    .foregroundColor(Color("LG"))
                            } else {
                                Text("\(formattedSelectionDate())")
                            }
                            Spacer()
                            Button {
                                showDatePicker.toggle()
                            } label: {
                                Image("calendarIcon")
                            }
                        
                       
                        
                        
                    }
                    .padding()
                    .frame(width: 450, height: 38)
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(red: 0.93, green: 0.93, blue: 0.96), lineWidth: 0.50)
                    )
                    
                        .padding(.bottom,14)
                    
                        if showDatePicker {
                            DatePicker(
                                "",
                                selection: $selectedDate,
                                displayedComponents: .date
                            )
                            .labelsHidden()
                            .datePickerStyle(.graphical)
                            .frame(maxHeight: 300)
                            
                            
                        }
                    
                    
                    Text("No. Handphone")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                    
                    TextField("", text: $noHandphone)
                        .autocapitalization(.none)
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .frame(width: 450, height: 38)
                        .cornerRadius(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .inset(by: 0.50)
                                .stroke(Color(red: 0.93, green: 0.93, blue: 0.96), lineWidth: 0.50)
                        )
                        .padding(.bottom,14)
                    
                    Text("Alergi Obat")
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .foregroundColor(Color("LightGray"))
                    
                    TextField("", text: $alergiObat)
                        .autocapitalization(.none)
                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                        .frame(width: 450, height: 38)
                        .cornerRadius(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .inset(by: 0.50)
                                .stroke(Color(red: 0.93, green: 0.93, blue: 0.96), lineWidth: 0.50)
                        )
                        .padding(.bottom,14)
                    
                    Spacer()
                    
                    Divider()
                    
                    Button{
                        //showTambahPabrikPopUp = false
                    }label: {
                        Text("Tambah Pasien")
                            .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                            .foregroundColor(.white)
                            .frame(width: 450, height: 44)
                            .frame(height: 44)
                            .background(Color("Green"))
                            .cornerRadius(10)
                            .padding(.top,10)
                    }
                }.padding(.horizontal)
            }.clipShape(.rect)
            
            
            
        }
        .padding()
        .background(.white)
        .frame(width: 542)
        
    }
    
    private func formattedSelectionDate() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy" // Sesuaikan dengan format yang Anda inginkan
        return formatter.string(from: selectedDate)
    }
    
}

struct TambahPasien_PopUpView: PreviewProvider {
    static var previews: some View {
        TambahPasienPopUp()
        TambahPasienPopUp().previewInterfaceOrientation(.landscapeRight)
    }
}

