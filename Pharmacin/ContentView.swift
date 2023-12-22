//
//  ContentView.swift
//  Pharmacin
//
//  Created by Devin Maleke on 19/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isExpanded = false
    @State private var isDashboard = true
    @State private var isStok = false
    @State private var isNotifikasi = false
    @State private var isTambahPenjualan = false
    @State private var isObat = false
    @State private var isPabrikan = false
    @State private var isPembelian = false
    @State private var isBukuBesar = false
    @State private var isManajemen = false
    @State private var isTransaksiBaru = false
    @State private var isOption = false
    
    @State private var isPenjualanSubMenuVisible = false
    @State private var isStokSubMenuVisible = false
    @State private var isObatSubMenuVisible = false
    @State private var isPembelianSubMenuVisible = false
    @State private var isBukuBesarSubMenuVisible = false
    @State private var isManajemenSubMenuVisible = false
    @State private var isOptionSubMenuVisible = false
    
    @State private var isTambahPenjualanSubMenu = false
    @State private var isKelolaPenjualanSubMenu = false
    
    //STOK
    @State private var isStokStokSubMenu = false
    @State private var isStokOpnameSubMenu = false
    @State private var isStokRiwayatOpnameSubMenu = false
    
    //OBAT
    @State private var isObatKategoriSubMenu = false
    @State private var isKelolaObatSubMenu = false
    @State private var showTambahKategoriPopUp = false
    @State private var showDetailObatView = false
    @State private var showTambahObatPopUp = false
    @State private var showInformasiObat = false
    @State var selectedObat: Obat?

    //PEMBELIAN
    @State private var isTambahPembelianSubMenu = false
    @State private var isKelolaPembelianSubMenu = false
    
    //BUKU BESAR
    @State private var isBukuBesarPenjualanSubMenu = false
    @State private var isBukuBesarPembelianSubMenu = false
    
    //MANAJEMEN
    @State private var isManajemenKlinikMenu = false
    @State private var isManajemenKaryawanSubMenu = false
    @State private var isManajemenRiwayatKasirSubMenu = false
    
    
    @State private var isTransaksiBaruSubMenu = false
    @State private var isPengaturanSubMenu = false
    @State private var isKeluarSubMenu = false
    
    @State private var showSuccessPopupPenjualan = false
    @State private var showSuccessPopupPembelian = false
    
    @State private var showSelesaiPembayaranPopUp = false
    @State private var showTutupSelesaiPembayaranPopup = false
    
    //PABRRIKAN
    @State private var showDetailPabrik = false
    @State var selectedPabrikan: Pabrikan?
    @State private var showTambahPabrikPopUp = false
    @State private var showInformasiPabrik = false
    @StateObject private var pabrikanViewModel = PabrikanViewModel()
    
    
    
    var body: some View {
        NavigationStack {
            GeometryReader{ geometry in
                ZStack {
                    HStack{
                        Rectangle()
                            .fill(Color.white) // Warna rectangle dapat disesuaikan
                            .frame(width: isExpanded ? 274: 68)
                        Spacer()
                    }.ignoresSafeArea()
                    HStack{
                        VStack{
                            VStack(alignment: .leading) {
                                Button(action: {
                                    
                                    isExpanded.toggle()
                                    if !isExpanded{
                                        isStokSubMenuVisible = false
                                        isPenjualanSubMenuVisible = false
                                        isObatSubMenuVisible = false
                                        isPembelianSubMenuVisible = false
                                        isBukuBesarSubMenuVisible = false
                                        isManajemenSubMenuVisible = false
                                        isOptionSubMenuVisible = false
                                    }
                                }) {
                                    if isExpanded{
                                        HStack{
                                            Image("PharmacinBlue")
                                            Text("Pharmacin")
                                                .font(.custom("PlusJakartaSans-Bold", size: 24))
                                                .foregroundColor(Color("Green"))
                                        }
                                        .padding(.top,20)
                                        
                                    }else{
                                        HStack{
                                            Spacer()
                                            Image("PharmacinGreen")
                                            Spacer()
                                            
                                        }
                                        .padding(.top,20)
                                        
                                    }
                                }
                                
                                Spacer()
                                
                                Button(action: {
                                    isDashboard = false
                                    isNotifikasi = true
                                    isExpanded = false
                                    isTambahPenjualanSubMenu = false
                                    isKelolaPenjualanSubMenu = false
                                    isStokStokSubMenu = false
                                    isStokOpnameSubMenu = false
                                    isStokRiwayatOpnameSubMenu = false
                                    isObatKategoriSubMenu = false
                                    isKelolaObatSubMenu = false
                                    isTambahPembelianSubMenu = false
                                    isKelolaPembelianSubMenu = false
                                    isBukuBesarPembelianSubMenu = false
                                    isBukuBesarPenjualanSubMenu = false
                                    isManajemenKlinikMenu = false
                                    isManajemenKaryawanSubMenu = false
                                    isManajemenRiwayatKasirSubMenu = false
                                    isTransaksiBaruSubMenu = false
                                    isPengaturanSubMenu = false
                                    isKeluarSubMenu = false
                                    isPabrikan = false
                                    isStokSubMenuVisible = false
                                    isPenjualanSubMenuVisible = false
                                    isObatSubMenuVisible = false
                                    isPembelianSubMenuVisible = false
                                    isBukuBesarSubMenuVisible = false
                                    isManajemenSubMenuVisible = false
                                    isOptionSubMenuVisible = false
                                }) {
                                    if isExpanded{
                                        HStack{
                                            Image("Notifikasi")
                                            Text("Notifikasi")
                                                .font(.custom("PlusJakartaSans-Medium", size: 16))
                                                .foregroundColor(Color("LG"))
                                                .padding(.leading,10)
                                            
                                            Text("20")
                                                .padding(EdgeInsets(top: 6, leading: 7, bottom: 6, trailing: 7))
                                                .font(.custom("PlusJakartaSans-Medium", size: 16))
                                                .foregroundColor(Color("LG"))
                                                .background(Color(red: 0.96, green: 0.96, blue: 0.96))
                                                .cornerRadius(6)
                                                .frame(width: 44, height: 32)
                                                .padding(.leading,70)
                                            
                                            
                                        }.padding(.top,20)
                                        
                                    }else{
                                        
                                        HStack{
                                            Spacer()
                                            isNotifikasi ? Image("NotifikasiGreen") : Image("Notifikasi")
                                            Spacer()
                                        }.padding(.top,20)
                                        
                                        
                                        
                                        
                                    }
                                }
                                Rectangle()
                                    .frame(width: isExpanded ? 238 : 60, height: 1)
                                    .foregroundColor(Color(red: 0.88, green: 0.87, blue: 0.87))
                                    .padding(.vertical)
                                
                                
                                Button(action: {
                                    isDashboard = true
                                    isNotifikasi = false
                                    isExpanded = false
                                    isTambahPenjualanSubMenu = false
                                    isKelolaPenjualanSubMenu = false
                                    isStokStokSubMenu = false
                                    isStokOpnameSubMenu = false
                                    isStokRiwayatOpnameSubMenu = false
                                    isObatKategoriSubMenu = false
                                    isKelolaObatSubMenu = false
                                    isTambahPembelianSubMenu = false
                                    isKelolaPembelianSubMenu = false
                                    isBukuBesarPembelianSubMenu = false
                                    isBukuBesarPenjualanSubMenu = false
                                    isManajemenKlinikMenu = false
                                    isManajemenKaryawanSubMenu = false
                                    isManajemenRiwayatKasirSubMenu = false
                                    isTransaksiBaruSubMenu = false
                                    isPengaturanSubMenu = false
                                    isKeluarSubMenu = false
                                    isPabrikan = false
                                    isStokSubMenuVisible = false
                                    isPenjualanSubMenuVisible = false
                                    isObatSubMenuVisible = false
                                    isPembelianSubMenuVisible = false
                                    isBukuBesarSubMenuVisible = false
                                    isManajemenSubMenuVisible = false
                                    isOptionSubMenuVisible = false
                                    
                                }) {
                                    if isExpanded{
                                        HStack{
                                            Image("Dashboard")
                                            Text("Dashboard")
                                                .font(.custom("PlusJakartaSans-Medium", size: 16))
                                                .foregroundColor(Color("LG"))
                                                .padding(.leading,10)
                                            
                                        }.padding(.bottom,24)
                                        //                                    .frame(height:60)
                                        
                                    }else{
                                        HStack{
                                            Spacer()
                                            isDashboard ? Image("DashboardGreen") : Image("Dashboard")
                                            Spacer()
                                        }.padding(.bottom,24)
                                        //                                    .frame(height:60)
                                        
                                    }
                                }
                                
                                
                                Button(action: {
                                    isExpanded = true
                                    isStokSubMenuVisible = false
                                    isPenjualanSubMenuVisible = true
                                    isObatSubMenuVisible = false
                                    isPembelianSubMenuVisible = false
                                    isBukuBesarSubMenuVisible = false
                                    isManajemenSubMenuVisible = false
                                    isOptionSubMenuVisible = false
                                }) {
                                    if isExpanded {
                                        //                                    ZStack{
                                        //                                        HStack (spacing: 20){
                                        
                                        HStack {
                                            
                                            Image("Penjualan")
                                            Text("Penjualan")
                                                .font(.custom("PlusJakartaSans-Medium", size: 16))
                                                .foregroundColor(Color("LG"))
                                                .padding(.leading, 10)
                                            
                                            Image(systemName: "chevron.right")
                                                .foregroundColor(Color("LG"))
                                                .frame(width: 32, height: 32)
                                                .padding(.leading,82)
                                            Spacer()
                                            //                                            }
                                        }.padding(.bottom,24)
                                    }else{
                                        
                                        HStack {
                                            Spacer()
                                            isTambahPenjualanSubMenu || isKelolaPenjualanSubMenu ? Image("PenjualanGreen") : Image("Penjualan")
                                            Spacer()
                                        }.padding(.bottom,24)
                                        
                                    }
                                }
                                .overlay(
                                    
                                    Group{
                                        if isPenjualanSubMenuVisible{
                                            VStack (alignment:.leading){
                                                
                                                Button(action: {
                                                    isDashboard = false
                                                    isNotifikasi = false
                                                    isExpanded = false
                                                    isTambahPenjualanSubMenu = true
                                                    isKelolaPenjualanSubMenu = false
                                                    isStokStokSubMenu = false
                                                    isStokOpnameSubMenu = false
                                                    isStokRiwayatOpnameSubMenu = false
                                                    isObatKategoriSubMenu = false
                                                    isKelolaObatSubMenu = false
                                                    isTambahPembelianSubMenu = false
                                                    isKelolaPembelianSubMenu = false
                                                    isBukuBesarPembelianSubMenu = false
                                                    isBukuBesarPenjualanSubMenu = false
                                                    isManajemenKlinikMenu = false
                                                    isManajemenKaryawanSubMenu = false
                                                    isManajemenRiwayatKasirSubMenu = false
                                                    isTransaksiBaruSubMenu = false
                                                    isPengaturanSubMenu = false
                                                    isKeluarSubMenu = false
                                                    isPabrikan = false
                                                    isPenjualanSubMenuVisible = false
                                                }) {
                                                    Text("Tambah Penjualan")
                                                    
                                                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                                                        .foregroundColor(Color("LG"))
                                                        .padding(.leading, 10)
                                                        .padding(.bottom,10)
                                                    
                                                }
                                                Divider()
                                                
                                                
                                                
                                                Button(action: {
                                                    isDashboard = false
                                                    isNotifikasi = false
                                                    isExpanded = false
                                                    isTambahPenjualanSubMenu = false
                                                    isKelolaPenjualanSubMenu = true
                                                    isStokStokSubMenu = false
                                                    isStokOpnameSubMenu = false
                                                    isStokRiwayatOpnameSubMenu = false
                                                    isObatKategoriSubMenu = false
                                                    isKelolaObatSubMenu = false
                                                    isTambahPembelianSubMenu = false
                                                    isKelolaPembelianSubMenu = false
                                                    isBukuBesarPembelianSubMenu = false
                                                    isBukuBesarPenjualanSubMenu = false
                                                    isManajemenKlinikMenu = false
                                                    isManajemenKaryawanSubMenu = false
                                                    isManajemenRiwayatKasirSubMenu = false
                                                    isTransaksiBaruSubMenu = false
                                                    isPengaturanSubMenu = false
                                                    isKeluarSubMenu = false
                                                    isPabrikan = false
                                                    isPenjualanSubMenuVisible = false
                                                }) {
                                                    Text("Kelola Penjualan")
                                                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                                                        .foregroundColor(Color("LG"))
                                                        .padding(.leading, 10)
                                                        .padding(.top,10)
                                                    
                                                    
                                                }
                                                
                                            }
                                            .padding()
                                            .frame(width: 265, height: 108)
                                            .background(Color.white)
                                            .cornerRadius(8)
                                            
                                            
                                            //                                                .frame(height: 300)
                                        }
                                    }.offset(x:270) ,
                                    alignment: .topLeading
                                    
                                )
                                
                                
                                Button(action: {
                                    isExpanded = true
                                    isStokSubMenuVisible = true
                                    isPenjualanSubMenuVisible = false
                                    isObatSubMenuVisible = false
                                    isPembelianSubMenuVisible = false
                                    isBukuBesarSubMenuVisible = false
                                    isManajemenSubMenuVisible = false
                                    isOptionSubMenuVisible = false
                                    
                                }) {
                                    if isExpanded{
                                        //                                    ZStack{
                                        //                                        HStack (spacing:20){
                                        HStack{
                                            Image("Stok")
                                            Text("Stok")
                                                .font(.custom("PlusJakartaSans-Medium", size: 16))
                                                .foregroundColor(Color("LG"))
                                                .padding(.leading,10)
                                            
                                            Image(systemName: "chevron.right")
                                                .foregroundColor(Color("LG"))
                                                .frame(width: 32, height: 32)
                                                .padding(.leading,119)
                                            Spacer()
                                        }.padding(.bottom,24)
                                        
                                    }
                                    
                                    else{
                                        HStack{
                                            Spacer()
                                            isStokStokSubMenu || isStokOpnameSubMenu || isStokRiwayatOpnameSubMenu ? Image("StokGreen") : Image("Stok")
                                            Spacer()
                                        }.padding(.bottom,24)
                                        
                                    }
                                }
                                //                                            .frame(width:500)
                                .overlay(
                                    Group{
                                        if isStokSubMenuVisible {
                                            VStack (alignment:.leading){
                                                Button(action: {
                                                    isDashboard = false
                                                    isNotifikasi = false
                                                    isExpanded = false
                                                    isTambahPenjualanSubMenu = false
                                                    isKelolaPenjualanSubMenu = false
                                                    isStokStokSubMenu = true
                                                    isStokOpnameSubMenu = false
                                                    isStokRiwayatOpnameSubMenu = false
                                                    isObatKategoriSubMenu = false
                                                    isKelolaObatSubMenu = false
                                                    isTambahPembelianSubMenu = false
                                                    isKelolaPembelianSubMenu = false
                                                    isBukuBesarPembelianSubMenu = false
                                                    isBukuBesarPenjualanSubMenu = false
                                                    isManajemenKlinikMenu = false
                                                    isManajemenKaryawanSubMenu = false
                                                    isManajemenRiwayatKasirSubMenu = false
                                                    isTransaksiBaruSubMenu = false
                                                    isPengaturanSubMenu = false
                                                    isKeluarSubMenu = false
                                                    isPabrikan = false
                                                    isStokSubMenuVisible = false
                                                    
                                                }) {
                                                    Text("Stok")
                                                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                                                        .foregroundColor(Color("LG"))
                                                        .padding(.leading, 10)
                                                }
                                                Divider()
                                                Button(action: {
                                                    isDashboard = false
                                                    isNotifikasi = false
                                                    isExpanded = false
                                                    isTambahPenjualanSubMenu = false
                                                    isKelolaPenjualanSubMenu = false
                                                    isStokStokSubMenu = false
                                                    isStokOpnameSubMenu = true
                                                    isStokRiwayatOpnameSubMenu = false
                                                    isObatKategoriSubMenu = false
                                                    isKelolaObatSubMenu = false
                                                    isTambahPembelianSubMenu = false
                                                    isKelolaPembelianSubMenu = false
                                                    isBukuBesarPembelianSubMenu = false
                                                    isBukuBesarPenjualanSubMenu = false
                                                    isManajemenKlinikMenu = false
                                                    isManajemenKaryawanSubMenu = false
                                                    isManajemenRiwayatKasirSubMenu = false
                                                    isTransaksiBaruSubMenu = false
                                                    isPengaturanSubMenu = false
                                                    isKeluarSubMenu = false
                                                    isPabrikan = false
                                                    isStokSubMenuVisible = false
                                                }) {
                                                    Text("Opname")
                                                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                                                        .foregroundColor(Color("LG"))
                                                        .padding(.leading, 10)
                                                }
                                                Divider()
                                                Button(action: {
                                                    isDashboard = false
                                                    isNotifikasi = false
                                                    isExpanded = false
                                                    isTambahPenjualanSubMenu = false
                                                    isKelolaPenjualanSubMenu = false
                                                    isStokStokSubMenu = false
                                                    isStokOpnameSubMenu = false
                                                    isStokRiwayatOpnameSubMenu = true
                                                    isObatKategoriSubMenu = false
                                                    isKelolaObatSubMenu = false
                                                    isTambahPembelianSubMenu = false
                                                    isKelolaPembelianSubMenu = false
                                                    isBukuBesarPembelianSubMenu = false
                                                    isBukuBesarPenjualanSubMenu = false
                                                    isManajemenKlinikMenu = false
                                                    isManajemenKaryawanSubMenu = false
                                                    isManajemenRiwayatKasirSubMenu = false
                                                    isTransaksiBaruSubMenu = false
                                                    isPengaturanSubMenu = false
                                                    isKeluarSubMenu = false
                                                    isPabrikan = false
                                                    isStokSubMenuVisible = false
                                                }) {
                                                    Text("Riwayat Opname")
                                                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                                                        .foregroundColor(Color("LG"))
                                                        .padding(.leading, 10)
                                                }
                                            }
                                            .padding()
                                            .frame(width:265)
                                            .background(Color.white)
                                            .cornerRadius(8)
                                            
                                            
                                        }
                                    }.offset(x:270) ,
                                    alignment: .topLeading
                                    
                                )
                                //                                        }
                                
                                
                                
                                Button(action: {
                                    isExpanded = true
                                    isStokSubMenuVisible = false
                                    isPenjualanSubMenuVisible = false
                                    isObatSubMenuVisible = true
                                    isPembelianSubMenuVisible = false
                                    isBukuBesarSubMenuVisible = false
                                    isManajemenSubMenuVisible = false
                                    isOptionSubMenuVisible = false
                                }) {
                                    if isExpanded{
                                        //                                    ZStack{
                                        
                                        HStack{
                                            Image("Obat")
                                            Text("Obat")
                                                .font(.custom("PlusJakartaSans-Medium", size: 16))
                                                .foregroundColor(Color("LG"))
                                                .padding(.leading,10)
                                            
                                            Image(systemName: "chevron.right")
                                                .foregroundColor(Color("LG"))
                                                .frame(width: 32, height: 32)
                                                .padding(.leading,112)
                                            Spacer()
                                        }.padding(.bottom,24)
                                        
                                    }else{
                                        HStack{
                                            Spacer()
                                            isObatKategoriSubMenu || isKelolaObatSubMenu ? Image("ObatGreen") : Image("Obat")
                                            Spacer()
                                        }.padding(.bottom,24)
                                        
                                    }
                                }
                                //                                        .frame(width:500)
                                .overlay(
                                    
                                    Group{
                                        if isObatSubMenuVisible {
                                            VStack (alignment:.leading){
                                                Button(action: {
                                                    isDashboard = false
                                                    isNotifikasi = false
                                                    isExpanded = false
                                                    isTambahPenjualanSubMenu = false
                                                    isKelolaPenjualanSubMenu = false
                                                    isStokStokSubMenu = false
                                                    isStokOpnameSubMenu = false
                                                    isStokRiwayatOpnameSubMenu = false
                                                    isObatKategoriSubMenu = true
                                                    isKelolaObatSubMenu = false
                                                    isTambahPembelianSubMenu = false
                                                    isKelolaPembelianSubMenu = false
                                                    isBukuBesarPembelianSubMenu = false
                                                    isBukuBesarPenjualanSubMenu = false
                                                    isManajemenKlinikMenu = false
                                                    isManajemenKaryawanSubMenu = false
                                                    isManajemenRiwayatKasirSubMenu = false
                                                    isTransaksiBaruSubMenu = false
                                                    isPengaturanSubMenu = false
                                                    isKeluarSubMenu = false
                                                    isPabrikan = false
                                                    isObatSubMenuVisible = false
                                                    
                                                }) {
                                                    Text("Kategori")
                                                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                                                        .foregroundColor(Color("LG"))
                                                        .padding(.leading, 10)
                                                }
                                                Divider()
                                                Button(action: {
                                                    isDashboard = false
                                                    isNotifikasi = false
                                                    isExpanded = false
                                                    isTambahPenjualanSubMenu = false
                                                    isKelolaPenjualanSubMenu = false
                                                    isStokStokSubMenu = false
                                                    isStokOpnameSubMenu = false
                                                    isStokRiwayatOpnameSubMenu = false
                                                    isObatKategoriSubMenu = false
                                                    isKelolaObatSubMenu = true
                                                    isTambahPembelianSubMenu = false
                                                    isKelolaPembelianSubMenu = false
                                                    isBukuBesarPembelianSubMenu = false
                                                    isBukuBesarPenjualanSubMenu = false
                                                    isManajemenKlinikMenu = false
                                                    isManajemenKaryawanSubMenu = false
                                                    isManajemenRiwayatKasirSubMenu = false
                                                    isTransaksiBaruSubMenu = false
                                                    isPengaturanSubMenu = false
                                                    isKeluarSubMenu = false
                                                    isPabrikan = false
                                                    isObatSubMenuVisible = false
                                                }) {
                                                    Text("Kelola Obat")
                                                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                                                        .foregroundColor(Color("LG"))
                                                        .padding(.leading, 10)
                                                }
                                            }
                                            .padding()
                                            .frame(width:265)
                                            .background(Color.white)
                                            .cornerRadius(8)
                                            
                                            
                                        }
                                    }.offset(x:270) ,
                                    alignment: .topLeading
                                )
                                
                                
                                //                                    }
                                
                                
                                
                                Button(action: {
                                    isDashboard = false
                                    isNotifikasi = false
                                    isExpanded = false
                                    isTambahPenjualanSubMenu = false
                                    isKelolaPenjualanSubMenu = false
                                    isStokStokSubMenu = false
                                    isStokOpnameSubMenu = false
                                    isStokRiwayatOpnameSubMenu = false
                                    isObatKategoriSubMenu = false
                                    isKelolaObatSubMenu = false
                                    isTambahPembelianSubMenu = false
                                    isKelolaPembelianSubMenu = false
                                    isBukuBesarPembelianSubMenu = false
                                    isBukuBesarPenjualanSubMenu = false
                                    isManajemenKlinikMenu = false
                                    isManajemenKaryawanSubMenu = false
                                    isManajemenRiwayatKasirSubMenu = false
                                    isTransaksiBaruSubMenu = false
                                    isPengaturanSubMenu = false
                                    isKeluarSubMenu = false
                                    isPabrikan = true
                                    isStokSubMenuVisible = false
                                    isPenjualanSubMenuVisible = false
                                    isObatSubMenuVisible = false
                                    isPembelianSubMenuVisible = false
                                    isBukuBesarSubMenuVisible = false
                                    isManajemenSubMenuVisible = false
                                    isOptionSubMenuVisible = false
                                }) {
                                    if isExpanded{
                                        HStack{
                                            Image("Pabrikan")
                                            Text("Pabrikan")
                                                .font(.custom("PlusJakartaSans-Medium", size: 16))
                                                .foregroundColor(Color("LG"))
                                                .padding(.leading,10)
                                            
                                        }.padding(.bottom,24)
                                        
                                    }else{
                                        HStack{
                                            Spacer()
                                            isPabrikan ? Image("PabrikanGreen") : Image("Pabrikan")
                                            Spacer()
                                        }.padding(.bottom,24)
                                        
                                    }
                                }
                                
                                Button(action: {
                                    isExpanded = true
                                    isStokSubMenuVisible = false
                                    isPenjualanSubMenuVisible = false
                                    isObatSubMenuVisible = false
                                    isPembelianSubMenuVisible = true
                                    isBukuBesarSubMenuVisible = false
                                    isManajemenSubMenuVisible = false
                                    isOptionSubMenuVisible = false
                                }) {
                                    if isExpanded{
                                        //                                    ZStack{
                                        HStack{
                                            Image("Pembelian")
                                            Text("Pembelian")
                                                .font(.custom("PlusJakartaSans-Medium", size: 16))
                                                .foregroundColor(Color("LG"))
                                                .padding(.leading,10)
                                            
                                            Image(systemName: "chevron.right")
                                                .foregroundColor(Color("LG"))
                                                .frame(width: 32, height: 32)
                                                .padding(.leading,70)
                                            
                                            Spacer()
                                        }.padding(.bottom,24)
                                    }
                                    else{
                                        HStack{
                                            Spacer()
                                            isKelolaPembelianSubMenu || isTambahPembelianSubMenu ? Image("PembelianGreen") : Image("Pembelian")
                                            Spacer()
                                        }.padding(.bottom,24)
                                        
                                    }
                                }
                                //                                        .frame(width:500)
                                .overlay(
                                    
                                    Group{
                                        if isPembelianSubMenuVisible {
                                            VStack (alignment:.leading){
                                                Button(action: {
                                                    isDashboard = false
                                                    isNotifikasi = false
                                                    isExpanded = false
                                                    isTambahPenjualanSubMenu = false
                                                    isKelolaPenjualanSubMenu = false
                                                    isStokStokSubMenu = false
                                                    isStokOpnameSubMenu = false
                                                    isStokRiwayatOpnameSubMenu = false
                                                    isObatKategoriSubMenu = false
                                                    isKelolaObatSubMenu = false
                                                    isTambahPembelianSubMenu = true
                                                    isKelolaPembelianSubMenu = false
                                                    isBukuBesarPembelianSubMenu = false
                                                    isBukuBesarPenjualanSubMenu = false
                                                    isManajemenKlinikMenu = false
                                                    isManajemenKaryawanSubMenu = false
                                                    isManajemenRiwayatKasirSubMenu = false
                                                    isTransaksiBaruSubMenu = false
                                                    isPengaturanSubMenu = false
                                                    isKeluarSubMenu = false
                                                    isPabrikan = false
                                                    isPembelianSubMenuVisible = false
                                                }) {
                                                    Text("Tambah Pembelian")
                                                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                                                        .foregroundColor(Color("LG"))
                                                        .padding(.leading, 10)
                                                }
                                                Divider()
                                                Button(action: {
                                                    isDashboard = false
                                                    isNotifikasi = false
                                                    isExpanded = false
                                                    isTambahPenjualanSubMenu = false
                                                    isKelolaPenjualanSubMenu = false
                                                    isStokStokSubMenu = false
                                                    isStokOpnameSubMenu = false
                                                    isStokRiwayatOpnameSubMenu = false
                                                    isObatKategoriSubMenu = false
                                                    isKelolaObatSubMenu = false
                                                    isTambahPembelianSubMenu = false
                                                    isKelolaPembelianSubMenu = true
                                                    isBukuBesarPembelianSubMenu = false
                                                    isBukuBesarPenjualanSubMenu = false
                                                    isManajemenKlinikMenu = false
                                                    isManajemenKaryawanSubMenu = false
                                                    isManajemenRiwayatKasirSubMenu = false
                                                    isTransaksiBaruSubMenu = false
                                                    isPengaturanSubMenu = false
                                                    isKeluarSubMenu = false
                                                    isPabrikan = false
                                                    isPembelianSubMenuVisible = false
                                                }) {
                                                    Text("Kelola Pembelian")
                                                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                                                        .foregroundColor(Color("LG"))
                                                        .padding(.leading, 10)
                                                }
                                            }
                                            .padding()
                                            .frame(width:265)
                                            .background(Color.white)
                                            .cornerRadius(8)
                                            
                                            
                                        }
                                    }.offset(x:270) ,
                                    alignment: .topLeading
                                )
                                
                                
                                
                                //                                    }
                                
                                
                                Button(action: {
                                    isExpanded = true
                                    isStokSubMenuVisible = false
                                    isPenjualanSubMenuVisible = false
                                    isObatSubMenuVisible = false
                                    isPembelianSubMenuVisible = false
                                    isBukuBesarSubMenuVisible = true
                                    isManajemenSubMenuVisible = false
                                    isOptionSubMenuVisible = false
                                }) {
                                    if isExpanded{
                                        //                                    ZStack{
                                        
                                        HStack{
                                            Image("BukuBesar")
                                            Text("BukuBesar")
                                                .font(.custom("PlusJakartaSans-Medium", size: 16))
                                                .foregroundColor(Color("LG"))
                                                .padding(.leading,10)
                                            
                                            Image(systemName: "chevron.right")
                                                .foregroundColor(Color("LG"))
                                                .frame(width: 32, height: 32)
                                                .padding(.leading,67)
                                            //                                            Spacer()
                                        }.padding(.bottom,24)
                                    }else{
                                        HStack{
                                            Spacer()
                                            isBukuBesarPembelianSubMenu || isBukuBesarPenjualanSubMenu ?  Image("BukuBesarGreen") : Image("BukuBesar")
                                            Spacer()
                                        }.padding(.bottom,24)
                                        
                                    }
                                }
                                //                                        .frame(width:500)
                                .overlay(
                                    
                                    Group{
                                        if isBukuBesarSubMenuVisible {
                                            VStack (alignment:.leading){
                                                Button(action: {
                                                    isDashboard = false
                                                    isNotifikasi = false
                                                    isExpanded = false
                                                    isTambahPenjualanSubMenu = false
                                                    isKelolaPenjualanSubMenu = false
                                                    isStokStokSubMenu = false
                                                    isStokOpnameSubMenu = false
                                                    isStokRiwayatOpnameSubMenu = false
                                                    isObatKategoriSubMenu = false
                                                    isKelolaObatSubMenu = false
                                                    isTambahPembelianSubMenu = false
                                                    isKelolaPembelianSubMenu = false
                                                    isBukuBesarPembelianSubMenu = false
                                                    isBukuBesarPenjualanSubMenu = true
                                                    isManajemenKlinikMenu = false
                                                    isManajemenKaryawanSubMenu = false
                                                    isManajemenRiwayatKasirSubMenu = false
                                                    isTransaksiBaruSubMenu = false
                                                    isPengaturanSubMenu = false
                                                    isKeluarSubMenu = false
                                                    isPabrikan = false
                                                    isBukuBesarSubMenuVisible = false
                                                }) {
                                                    Text("Penjualan")
                                                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                                                        .foregroundColor(Color("LG"))
                                                        .padding(.leading, 10)
                                                }
                                                Divider()
                                                Button(action: {
                                                    isDashboard = false
                                                    isNotifikasi = false
                                                    isExpanded = false
                                                    isTambahPenjualanSubMenu = false
                                                    isKelolaPenjualanSubMenu = false
                                                    isStokStokSubMenu = false
                                                    isStokOpnameSubMenu = false
                                                    isStokRiwayatOpnameSubMenu = false
                                                    isObatKategoriSubMenu = false
                                                    isKelolaObatSubMenu = false
                                                    isTambahPembelianSubMenu = false
                                                    isKelolaPembelianSubMenu = false
                                                    isBukuBesarPembelianSubMenu = true
                                                    isBukuBesarPenjualanSubMenu = false
                                                    isManajemenKlinikMenu = false
                                                    isManajemenKaryawanSubMenu = false
                                                    isManajemenRiwayatKasirSubMenu = false
                                                    isTransaksiBaruSubMenu = false
                                                    isPengaturanSubMenu = false
                                                    isKeluarSubMenu = false
                                                    isPabrikan = false
                                                    isBukuBesarSubMenuVisible = false
                                                }) {
                                                    Text("Pembelian")
                                                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                                                        .foregroundColor(Color("LG"))
                                                        .padding(.leading, 10)
                                                }
                                            }
                                            .padding()
                                            .frame(width:265)
                                            .background(Color.white)
                                            .cornerRadius(8)
                                            
                                            
                                        }
                                    }.offset(x:270) ,
                                    alignment: .topLeading
                                )
                                //                                    }
                                
                                
                                
                                Button(action: {
                                    isExpanded = true
                                    isStokSubMenuVisible = false
                                    isPenjualanSubMenuVisible = false
                                    isObatSubMenuVisible = false
                                    isPembelianSubMenuVisible = false
                                    isBukuBesarSubMenuVisible = false
                                    isManajemenSubMenuVisible = true
                                    isOptionSubMenuVisible = false
                                }) {
                                    if isExpanded{
                                        HStack{
                                            Image("Manajemen")
                                            Text("Manajemen")
                                                .font(.custom("PlusJakartaSans-Medium", size: 16))
                                                .foregroundColor(Color("LG"))
                                                .padding(.leading,10)
                                            
                                            Image(systemName: "chevron.right")
                                                .foregroundColor(Color("LG"))
                                                .frame(width: 32, height: 32)
                                                .padding(.leading,60)
                                        }.padding(.bottom,24)
                                        
                                    }
                                    
                                    
                                    
                                    
                                    else{
                                        HStack{
                                            Spacer()
                                            isManajemenKlinikMenu || isManajemenKaryawanSubMenu || isManajemenRiwayatKasirSubMenu ? Image("ManajemenGreen") : Image("Manajemen")
                                            Spacer()
                                        }.padding(.bottom,24)
                                        
                                    }
                                }
                                
                                .overlay(
                                    
                                    Group{
                                        if isManajemenSubMenuVisible {
                                            VStack (alignment:.leading){
                                                Button(action: {
                                                    isDashboard = false
                                                    isNotifikasi = false
                                                    isExpanded = false
                                                    isTambahPenjualanSubMenu = false
                                                    isKelolaPenjualanSubMenu = false
                                                    isStokStokSubMenu = false
                                                    isStokOpnameSubMenu = false
                                                    isStokRiwayatOpnameSubMenu = false
                                                    isObatKategoriSubMenu = false
                                                    isKelolaObatSubMenu = false
                                                    isTambahPembelianSubMenu = false
                                                    isKelolaPembelianSubMenu = false
                                                    isBukuBesarPembelianSubMenu = false
                                                    isBukuBesarPenjualanSubMenu = false
                                                    isManajemenKlinikMenu = true
                                                    isManajemenKaryawanSubMenu = false
                                                    isManajemenRiwayatKasirSubMenu = false
                                                    isTransaksiBaruSubMenu = false
                                                    isPengaturanSubMenu = false
                                                    isKeluarSubMenu = false
                                                    isPabrikan = false
                                                    isManajemenSubMenuVisible = false
                                                }) {
                                                    Text("Klinik")
                                                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                                                        .foregroundColor(Color("LG"))
                                                        .padding(.leading, 10)
                                                }
                                                Divider()
                                                Button(action: {
                                                    isDashboard = false
                                                    isNotifikasi = false
                                                    isExpanded = false
                                                    isTambahPenjualanSubMenu = false
                                                    isKelolaPenjualanSubMenu = false
                                                    isStokStokSubMenu = false
                                                    isStokOpnameSubMenu = false
                                                    isStokRiwayatOpnameSubMenu = false
                                                    isObatKategoriSubMenu = false
                                                    isKelolaObatSubMenu = false
                                                    isTambahPembelianSubMenu = false
                                                    isKelolaPembelianSubMenu = false
                                                    isBukuBesarPembelianSubMenu = false
                                                    isBukuBesarPenjualanSubMenu = false
                                                    isManajemenKlinikMenu = false
                                                    isManajemenKaryawanSubMenu = true
                                                    isManajemenRiwayatKasirSubMenu = false
                                                    isTransaksiBaruSubMenu = false
                                                    isPengaturanSubMenu = false
                                                    isKeluarSubMenu = false
                                                    isPabrikan = false
                                                    isManajemenSubMenuVisible = false
                                                }) {
                                                    Text("Karyawan")
                                                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                                                        .foregroundColor(Color("LG"))
                                                        .padding(.leading, 10)
                                                }
                                                Divider()
                                                Button(action: {
                                                    isDashboard = false
                                                    isNotifikasi = false
                                                    isExpanded = false
                                                    isTambahPenjualanSubMenu = false
                                                    isKelolaPenjualanSubMenu = false
                                                    isStokStokSubMenu = false
                                                    isStokOpnameSubMenu = false
                                                    isStokRiwayatOpnameSubMenu = false
                                                    isObatKategoriSubMenu = false
                                                    isKelolaObatSubMenu = false
                                                    isTambahPembelianSubMenu = false
                                                    isKelolaPembelianSubMenu = false
                                                    isBukuBesarPembelianSubMenu = false
                                                    isBukuBesarPenjualanSubMenu = false
                                                    isManajemenKlinikMenu = false
                                                    isManajemenKaryawanSubMenu = false
                                                    isManajemenRiwayatKasirSubMenu = true
                                                    isTransaksiBaruSubMenu = false
                                                    isPengaturanSubMenu = false
                                                    isKeluarSubMenu = false
                                                    isPabrikan = false
                                                    isManajemenSubMenuVisible = false
                                                }) {
                                                    Text("Riwayat Kasir")
                                                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                                                        .foregroundColor(Color("LG"))
                                                        .padding(.leading, 10)
                                                }
                                            }
                                            .padding()
                                            .frame(width:265)
                                            .background(Color.white)
                                            .cornerRadius(8)
                                            
                                            
                                        }
                                    }.offset(x:270) ,
                                    alignment: .topLeading
                                )
                                
                                
                                Spacer()
                                
                                Button(action: {
                                    isDashboard = false
                                    isNotifikasi = false
                                    isExpanded = false
                                    isTambahPenjualanSubMenu = true
                                    isKelolaPenjualanSubMenu = false
                                    isStokStokSubMenu = false
                                    isStokOpnameSubMenu = false
                                    isStokRiwayatOpnameSubMenu = false
                                    isObatKategoriSubMenu = false
                                    isKelolaObatSubMenu = false
                                    isTambahPembelianSubMenu = false
                                    isKelolaPembelianSubMenu = false
                                    isBukuBesarPembelianSubMenu = false
                                    isBukuBesarPenjualanSubMenu = false
                                    isManajemenKlinikMenu = false
                                    isManajemenKaryawanSubMenu = false
                                    isManajemenRiwayatKasirSubMenu = false
                                    isTransaksiBaruSubMenu = true
                                    isPengaturanSubMenu = false
                                    isKeluarSubMenu = false
                                    isPabrikan = false
                                }) {
                                    if isExpanded{
                                        HStack{
                                            Image("Plus")
                                            Text("Transaksi Baru")
                                                .font(.custom("PlusJakartaSans-Medium", size: 16))
                                                .foregroundColor(.white)
                                        }
                                        .frame(width: 238, height: 44)
                                        .background(Color("DarkBlue"))
                                        .cornerRadius(10)
                                    }else{
                                        
                                        HStack{
                                            Spacer()
                                            Image("Plus")
                                                .frame(width: 42, height: 44)
                                                .background(Color("DarkBlue"))
                                                .cornerRadius(10)
                                            Spacer()
                                        }
                                        
                                        
                                        
                                        
                                    }
                                }
                                
                                Rectangle()
                                    .frame(width: isExpanded ? 238 : 60, height: 1)
                                    .foregroundColor(Color(red: 0.88, green: 0.87, blue: 0.87))
                                    .padding(.top,10)
                                    .padding(.bottom,10)
                                //                                Divider()
                                //                                    .padding(.trailing,330)
                                //                                    .padding()
                                
                                
                                if isExpanded{
                                    //                                ZStack{
                                    HStack (spacing:25){
                                        HStack{
                                            Image("Profile")
                                                .padding(.trailing,8)
                                            VStack(alignment: .leading, spacing:5){
                                                Text("John Doe")
                                                    .font(.custom("PlusJakartaSans-SemiBold", size: 16))
                                                    .foregroundColor(Color(red: 0.39, green: 0.39, blue: 0.39))
                                                Text("Transaksi Baru")
                                                    .font(.custom("PlusJakartaSans-Regular", size: 14))
                                                    .foregroundColor(Color("LG"))
                                            }
                                            
                                            
                                            
                                            Button {
                                                isExpanded = true
                                                isStokSubMenuVisible = false
                                                isPenjualanSubMenuVisible = false
                                                isObatSubMenuVisible = false
                                                isPembelianSubMenuVisible = false
                                                isBukuBesarSubMenuVisible = false
                                                isManajemenSubMenuVisible = false
                                                isOptionSubMenuVisible = true
                                            } label: {
                                                Image("Option")
                                                    .frame(width: 32, height: 32)
                                                    .padding(.leading,50)
                                            }.overlay(
                                                Group{
                                                    if isOptionSubMenuVisible{
                                                        VStack (alignment:.leading){
                                                            Button(action: {
                                                                isDashboard = false
                                                                isNotifikasi = false
                                                                isExpanded = false
                                                                isTambahPenjualanSubMenu = false
                                                                isKelolaPenjualanSubMenu = false
                                                                isStokStokSubMenu = false
                                                                isStokOpnameSubMenu = false
                                                                isStokRiwayatOpnameSubMenu = false
                                                                isObatKategoriSubMenu = false
                                                                isKelolaObatSubMenu = false
                                                                isTambahPembelianSubMenu = false
                                                                isKelolaPembelianSubMenu = false
                                                                isBukuBesarPembelianSubMenu = false
                                                                isBukuBesarPenjualanSubMenu = false
                                                                isManajemenKlinikMenu = false
                                                                isManajemenKaryawanSubMenu = false
                                                                isManajemenRiwayatKasirSubMenu = false
                                                                isTransaksiBaruSubMenu = false
                                                                isPengaturanSubMenu = true
                                                                isKeluarSubMenu = false
                                                                isPabrikan = false
                                                                isOptionSubMenuVisible = false
                                                            }) {
                                                                HStack{
                                                                    Image("Setting")
                                                                        .padding(.leading, 8)
                                                                    Text("Pengaturan")
                                                                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                                                                        .foregroundColor(Color("LG"))
                                                                        .padding(.leading, 2)
                                                                }
                                                            }
                                                            Divider()
                                                            Button(action: {
                                                                isDashboard = false
                                                                isNotifikasi = false
                                                                isExpanded = false
                                                                isTambahPenjualanSubMenu = false
                                                                isKelolaPenjualanSubMenu = false
                                                                isStokStokSubMenu = false
                                                                isStokOpnameSubMenu = false
                                                                isStokRiwayatOpnameSubMenu = false
                                                                isObatKategoriSubMenu = false
                                                                isKelolaObatSubMenu = false
                                                                isTambahPembelianSubMenu = false
                                                                isKelolaPembelianSubMenu = false
                                                                isBukuBesarPembelianSubMenu = false
                                                                isBukuBesarPenjualanSubMenu = false
                                                                isManajemenKlinikMenu = false
                                                                isManajemenKaryawanSubMenu = false
                                                                isManajemenRiwayatKasirSubMenu = false
                                                                isTransaksiBaruSubMenu = false
                                                                isPengaturanSubMenu = false
                                                                isKeluarSubMenu = true
                                                                isPabrikan = false
                                                                isOptionSubMenuVisible = false
                                                            }) {
                                                                HStack{
                                                                    Image ("Logout")
                                                                        .padding(.leading, 8)
                                                                    Text("Keluar")
                                                                        .font(.custom("PlusJakartaSans-Medium", size: 16))
                                                                        .foregroundColor(Color("LG"))
                                                                        .padding(.leading, 2)
                                                                }
                                                            }
                                                        }
                                                        .padding()
                                                        .frame(width:265)
                                                        .background(Color.white)
                                                        .cornerRadius(8)
                                                        .padding(.bottom,40)
                                                        
                                                        
                                                    }
                                                }.offset(x:200)
                                                
                                                
                                            )
                                            
                                            
                                        }
                                        
                                    }
                                    //                                }
                                    //                                .frame(height:30)
                                }else{
                                    HStack{
                                        Spacer()
                                        Image("Profile")
                                        Spacer()
                                    }
                                    
                                    
                                    
                                }
                                
                                
                                
                                
                                
                            }
                            .padding(.horizontal,16)
                            .frame(maxHeight: .infinity)
                            .frame(width: isExpanded ? 300: 68)
                            
                            
                        }
                        
                        
                        Spacer()
                        
                        
                        
                    }
                    
                    .navigationTitle("")
                    .navigationBarHidden(true)
                    
                    
                    
                    if isDashboard{
                        DashboardView()
                            .zIndex(-2)
                            .frame(maxWidth: .infinity)
                            .offset(x : 69)
                            .overlay(
                                Color.black.opacity(isExpanded ? 0.4 : 0)
                            )
                            .onTapGesture{
                                isExpanded = false
                                isStokSubMenuVisible = false
                                isPenjualanSubMenuVisible = false
                                isObatSubMenuVisible = false
                                isPembelianSubMenuVisible = false
                                isBukuBesarSubMenuVisible = false
                                isManajemenSubMenuVisible = false
                                isOptionSubMenuVisible = false
                            }
                    }
                    
                    if isNotifikasi{
                        NotifikasiView()
                            .zIndex(-2)
                            .frame(maxWidth: .infinity)
                            .offset(x : 69)
                            .overlay(
                                Color.black.opacity(isExpanded ? 0.4 : 0)
                            )
                            .onTapGesture{
                                isExpanded = false
                                isStokSubMenuVisible = false
                                isPenjualanSubMenuVisible = false
                                isObatSubMenuVisible = false
                                isPembelianSubMenuVisible = false
                                isBukuBesarSubMenuVisible = false
                                isManajemenSubMenuVisible = false
                                isOptionSubMenuVisible = false
                            }
                    }
                    
                    if isTambahPenjualanSubMenu || isTransaksiBaruSubMenu{
                        PenjualanView(showSuccessPopup: $showSuccessPopupPenjualan)
                            .zIndex(-2)
                            .frame(maxWidth: .infinity)
                            .offset(x: 69)
                            .overlay(
                                Color.black.opacity(isExpanded ? 0.4 : 0) // Tambahkan lapisan abu-abu dengan opacity
                            )
                            .onTapGesture{
                                isExpanded = false
                                isStokSubMenuVisible = false
                                isPenjualanSubMenuVisible = false
                                isObatSubMenuVisible = false
                                isPembelianSubMenuVisible = false
                                isBukuBesarSubMenuVisible = false
                                isManajemenSubMenuVisible = false
                                isOptionSubMenuVisible = false
                            }
                         
                        if showSuccessPopupPenjualan {
                            ZStack {
                                // Background color with opacity
                                Color.black.opacity(0.4)
                                    .edgesIgnoringSafeArea(.all)
                                
                                // Popup content
                                VStack {
                                    // Your pop-up content here
                                    PopupBerhasil(showSelesaiPembayaranPopup: $showSelesaiPembayaranPopUp)
                                    
                                }
                                
                                
                            }
                        }
                        
                        if showSelesaiPembayaranPopUp {
                            ZStack {
                                // Background color with opacity
                                Color.black.opacity(0.4)
                                    .edgesIgnoringSafeArea(.all)
                                // Popup content
                                VStack {
                                    // Your pop-up content here
                                    PopUpSeleseaiPembayaran(showTutupSelesaiPembayaranPopup: $isKelolaPenjualanSubMenu)
                                }
                                .onAppear {
                                    showSuccessPopupPenjualan = false
                                }
                            }
                            
                            
                        }
                        
                    }
                    
                    
                    
                    if isKelolaPenjualanSubMenu{
                        KelolaPenjualanView(showTambahPenjualanView: $isTambahPenjualanSubMenu, showKelolaPenjualanView: $isKelolaPenjualanSubMenu)
                            .zIndex(-2)
                            .frame(maxWidth: .infinity)
                            .offset(x : 69)
                            .overlay(
                                Color.black.opacity(isExpanded ? 0.4 : 0)
                            )
                            .onTapGesture{
                                isExpanded = false
                                isStokSubMenuVisible = false
                                isPenjualanSubMenuVisible = false
                                isObatSubMenuVisible = false
                                isPembelianSubMenuVisible = false
                                isBukuBesarSubMenuVisible = false
                                isManajemenSubMenuVisible = false
                                isOptionSubMenuVisible = false
                            }
                            .onAppear {
                                showSelesaiPembayaranPopUp = false
                                
                            }
                    }
                    
                    if isStokStokSubMenu{
                        StokView()
                            .zIndex(-2)
                            .frame(maxWidth: .infinity)
                            .offset(x : 69)
                            .overlay(
                                Color.black.opacity(isExpanded ? 0.4 : 0)
                            )
                            .onTapGesture{
                                isExpanded = false
                                isStokSubMenuVisible = false
                                isPenjualanSubMenuVisible = false
                                isObatSubMenuVisible = false
                                isPembelianSubMenuVisible = false
                                isBukuBesarSubMenuVisible = false
                                isManajemenSubMenuVisible = false
                                isOptionSubMenuVisible = false
                            }
                        
                    }
                    
                    if isStokOpnameSubMenu{
                        StokOpnameView()
                            .zIndex(-2)
                            .frame(maxWidth: .infinity)
                            .offset(x : 69)
                            .overlay(
                                Color.black.opacity(isExpanded ? 0.4 : 0)
                            )
                            .onTapGesture{
                                isExpanded = false
                                isStokSubMenuVisible = false
                                isPenjualanSubMenuVisible = false
                                isObatSubMenuVisible = false
                                isPembelianSubMenuVisible = false
                                isBukuBesarSubMenuVisible = false
                                isManajemenSubMenuVisible = false
                                isOptionSubMenuVisible = false
                            }
                        
                    }
                    
                    if isStokRiwayatOpnameSubMenu{
                        StokRiwayatOpnameView()
                            .zIndex(-2)
                            .frame(maxWidth: .infinity)
                            .offset(x : 69)
                            .overlay(
                                Color.black.opacity(isExpanded ? 0.4 : 0)
                            )
                            .onTapGesture{
                                isExpanded = false
                                isStokSubMenuVisible = false
                                isPenjualanSubMenuVisible = false
                                isObatSubMenuVisible = false
                                isPembelianSubMenuVisible = false
                                isBukuBesarSubMenuVisible = false
                                isManajemenSubMenuVisible = false
                                isOptionSubMenuVisible = false
                            }
                        
                    }
                    
                    if isObatKategoriSubMenu{
                        ObatKategoriView(showTambahKategoriPopUp: $showTambahKategoriPopUp)
                            .zIndex(-2)
                            .frame(maxWidth: .infinity)
                            .offset(x : 69)
                            .overlay(
                                Color.black.opacity(isExpanded ? 0.4 : 0)
                            )
                            .onTapGesture{
                                isExpanded = false
                                isStokSubMenuVisible = false
                                isPenjualanSubMenuVisible = false
                                isObatSubMenuVisible = false
                                isPembelianSubMenuVisible = false
                                isBukuBesarSubMenuVisible = false
                                isManajemenSubMenuVisible = false
                                isOptionSubMenuVisible = false
                            }
                        
                        if showTambahKategoriPopUp {
                            ZStack {
                                
                                
                                // Background color with opacity
                                Color.black.opacity(0.4)
                                    .edgesIgnoringSafeArea(.all)
                                
                                // Popup content
                                HStack {
                                    // Your pop-up content here
                                    TambahKategoriPopUp(showTambahKategoriPopUp: $showTambahKategoriPopUp)
                                    Spacer()
                                    
                                }
                                
                            }
                        }
                        
                    }
                    
                    if isKelolaObatSubMenu{
                        ObatKelolaItemView(showDetailObatView: $showDetailObatView, selecetedObat: $selectedObat, showTambahObatPopUp: $showTambahObatPopUp)
                            .zIndex(-2)
                            .frame(maxWidth: .infinity)
                            .offset(x : 69)
                            .overlay(
                                Color.black.opacity(isExpanded ? 0.4 : 0)
                            )
                            .onTapGesture{
                                isExpanded = false
                                isStokSubMenuVisible = false
                                isPenjualanSubMenuVisible = false
                                isObatSubMenuVisible = false
                                isPembelianSubMenuVisible = false
                                isBukuBesarSubMenuVisible = false
                                isManajemenSubMenuVisible = false
                                isOptionSubMenuVisible = false
                            }
                        
                        if showTambahObatPopUp {
                            ZStack {
                                // Background color with opacity
                                Color.black.opacity(0.4)
                                    .edgesIgnoringSafeArea(.all)
                                // Popup content
                                HStack {
                                    // Your pop-up content here
                                    TambahObatPopUp(showTambahObatPopUp: $showTambahObatPopUp)
                                    
                                    Spacer()
                                   
                                }
                                
                            }
                        }
                        
                        if showDetailObatView, let obat = selectedObat{
                            ObatDetailView(showDetailObatView: $showDetailObatView, showInformasiObat: $showInformasiObat, obat: obat)
                                .zIndex(-2)
                                .frame(maxWidth: .infinity)
                                .offset(x : 69)
                                .overlay(
                                    Color.black.opacity(isExpanded ? 0.4 : 0)
                                )
                                .onTapGesture{
                                    isExpanded = false
                                    isStokSubMenuVisible = false
                                    isPenjualanSubMenuVisible = false
                                    isObatSubMenuVisible = false
                                    isPembelianSubMenuVisible = false
                                    isBukuBesarSubMenuVisible = false
                                    isManajemenSubMenuVisible = false
                                    isOptionSubMenuVisible = false
                                }
                            
                            if showInformasiObat {
                                ZStack {
                                    // Background color with opacity
                                    Color.black.opacity(0.4)
                                        .edgesIgnoringSafeArea(.all)
                                    
                                    // Popup content
                                    HStack {
                                        Spacer()
                                        // Your pop-up content here
                                        InformasiObatPopUp(showInformasiObatPopUp: $showInformasiObat)
                                    }
                                    
                                }
                            }
                            
                        }

                        
                    }
                    
                    if isPabrikan{
                        PabrikanKelolaPabrikView(showDetailPabrik: $showDetailPabrik, selecetedPabrik: $selectedPabrikan, showTambahPabrikPopUp: $showTambahPabrikPopUp)
                            .zIndex(-2)
                            .frame(maxWidth: .infinity)
                            .offset(x : 69)
                            .overlay(
                                Color.black.opacity(isExpanded ? 0.4 : 0)
                            )
                            .onTapGesture{
                                isExpanded = false
                                isStokSubMenuVisible = false
                                isPenjualanSubMenuVisible = false
                                isObatSubMenuVisible = false
                                isPembelianSubMenuVisible = false
                                isBukuBesarSubMenuVisible = false
                                isManajemenSubMenuVisible = false
                                isOptionSubMenuVisible = false
                            }
                           
                        if showTambahPabrikPopUp {
                            ZStack {
                                // Background color with opacity
                                Color.black.opacity(0.4)
                                    .edgesIgnoringSafeArea(.all)
                                
                                // Popup content
                                HStack {
                                    // Your pop-up content here
                                    TambahPabrikPopUp(showTambahPabrikPopUp: $showTambahPabrikPopUp)
                                    Spacer()
                                }
                                
                            }
                        }

                        
                        if showDetailPabrik, let pabrikan = selectedPabrikan{
                            
                            PabrikanDetailView(showDetailPabrikView: $showDetailPabrik, showInformasiPabrik: $showInformasiPabrik, pabrikan: pabrikan)
                                .zIndex(-2)
                                .frame(maxWidth: .infinity)
                                .offset(x : 69)
                                .overlay(
                                    Color.black.opacity(isExpanded ? 0.4 : 0)
                                )
                                .onTapGesture{
                                    isExpanded = false
                                    isStokSubMenuVisible = false
                                    isPenjualanSubMenuVisible = false
                                    isObatSubMenuVisible = false
                                    isPembelianSubMenuVisible = false
                                    isBukuBesarSubMenuVisible = false
                                    isManajemenSubMenuVisible = false
                                    isOptionSubMenuVisible = false
                                }
                            
                            if showInformasiPabrik {
                                ZStack {
                                    // Background color with opacity
                                    Color.black.opacity(0.4)
                                        .edgesIgnoringSafeArea(.all)
                                    
                                    // Popup content
                                    HStack {
                                        Spacer()
                                        // Your pop-up content here
                                        InformasiPabrikPopUp(showInformasiPabrikPopUp: $showInformasiPabrik)
                                    }
                                    
                                }
                            }

                            
                            
                        }
                        
                        
                    }
                    
                    
                    
                    if isBukuBesarPembelianSubMenu{
                        BukuBesarPembelianView()
                            .zIndex(-2)
                            .frame(maxWidth: .infinity)
                            .offset(x : 69)
                            .overlay(
                                Color.black.opacity(isExpanded ? 0.4 : 0)
                            )
                            .onTapGesture{
                                isExpanded = false
                                isStokSubMenuVisible = false
                                isPenjualanSubMenuVisible = false
                                isObatSubMenuVisible = false
                                isPembelianSubMenuVisible = false
                                isBukuBesarSubMenuVisible = false
                                isManajemenSubMenuVisible = false
                                isOptionSubMenuVisible = false
                            }
                        
                    }
                    
                    if isBukuBesarPenjualanSubMenu{
                        BukuBesarPenjualanView()
                            .zIndex(-2)
                            .frame(maxWidth: .infinity)
                            .offset(x : 69)
                            .overlay(
                                Color.black.opacity(isExpanded ? 0.4 : 0)
                            )
                            .onTapGesture{
                                isExpanded = false
                                isStokSubMenuVisible = false
                                isPenjualanSubMenuVisible = false
                                isObatSubMenuVisible = false
                                isPembelianSubMenuVisible = false
                                isBukuBesarSubMenuVisible = false
                                isManajemenSubMenuVisible = false
                                isOptionSubMenuVisible = false
                            }
                        
                    }
                    
                    if isManajemenKlinikMenu{
                        ManajemenKlinikView()
                            .zIndex(-2)
                            .frame(maxWidth: .infinity)
                            .offset(x : 69)
                            .overlay(
                                Color.black.opacity(isExpanded ? 0.4 : 0)
                            )
                            .onTapGesture{
                                isExpanded = false
                                isStokSubMenuVisible = false
                                isPenjualanSubMenuVisible = false
                                isObatSubMenuVisible = false
                                isPembelianSubMenuVisible = false
                                isBukuBesarSubMenuVisible = false
                                isManajemenSubMenuVisible = false
                                isOptionSubMenuVisible = false
                            }
                        
                    }
                    
                    if isManajemenKaryawanSubMenu{
                       ManajemenAkunView()
                            .zIndex(-2)
                            .frame(maxWidth: .infinity)
                            .offset(x : 69)
                            .overlay(
                                Color.black.opacity(isExpanded ? 0.4 : 0)
                            )
                            .onTapGesture{
                                isExpanded = false
                                isStokSubMenuVisible = false
                                isPenjualanSubMenuVisible = false
                                isObatSubMenuVisible = false
                                isPembelianSubMenuVisible = false
                                isBukuBesarSubMenuVisible = false
                                isManajemenSubMenuVisible = false
                                isOptionSubMenuVisible = false
                            }
                        
                    }
                    
                    if isManajemenRiwayatKasirSubMenu{
                       ManajemenRiwayatKasirView()
                            .zIndex(-2)
                            .frame(maxWidth: .infinity)
                            .offset(x : 69)
                            .overlay(
                                Color.black.opacity(isExpanded ? 0.4 : 0)
                            )
                            .onTapGesture{
                                isExpanded = false
                                isStokSubMenuVisible = false
                                isPenjualanSubMenuVisible = false
                                isObatSubMenuVisible = false
                                isPembelianSubMenuVisible = false
                                isBukuBesarSubMenuVisible = false
                                isManajemenSubMenuVisible = false
                                isOptionSubMenuVisible = false
                            }
                        
                    }
                    
                    if isTambahPembelianSubMenu{
                        PembelianView(showSuccessPopup: $showSuccessPopupPembelian)
                            .zIndex(-2)
                            .frame(maxWidth: .infinity)
                            .offset(x: 69)
                            .overlay(
                                Color.black.opacity(isExpanded ? 0.4 : 0) // Tambahkan lapisan abu-abu dengan opacity
                            )
                            .onTapGesture{
                                isExpanded = false
                                isStokSubMenuVisible = false
                                isPenjualanSubMenuVisible = false
                                isObatSubMenuVisible = false
                                isPembelianSubMenuVisible = false
                                isBukuBesarSubMenuVisible = false
                                isManajemenSubMenuVisible = false
                                isOptionSubMenuVisible = false
                            }
                        
                        if showSuccessPopupPembelian {
                            ZStack {
                                // Background color with opacity
                                Color.black.opacity(0.4)
                                    .edgesIgnoringSafeArea(.all)
                                
                                // Popup content
                                VStack {
                                    // Your pop-up content here
                                    KonfirmasiPembelianPopUp(showKonfirmasiPembelianPopUp: $showSuccessPopupPembelian, showKelolaPembelian: $isKelolaPembelianSubMenu)
                                    
                                }
                                
                            }
                        }
                        
                    }
                    
                    if isKelolaPembelianSubMenu{
                        KelolaPembelianView(showTambahPembelianView: $isTambahPembelianSubMenu, showKelolaPembelian: $isKelolaPembelianSubMenu)
                            .zIndex(-2)
                            .frame(maxWidth: .infinity)
                            .offset(x : 69)
                            .overlay(
                                Color.black.opacity(isExpanded ? 0.4 : 0)
                            )
                            .onTapGesture{
                                isExpanded = false
                                isStokSubMenuVisible = false
                                isPenjualanSubMenuVisible = false
                                isObatSubMenuVisible = false
                                isPembelianSubMenuVisible = false
                                isBukuBesarSubMenuVisible = false
                                isManajemenSubMenuVisible = false
                                isOptionSubMenuVisible = false
                            }
                            .onAppear(){
                                showSuccessPopupPembelian = false
                            }
                        
                    }
                    
                    
                    
                    
                }
                
            }
        }
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView().previewInterfaceOrientation(.landscapeRight)
    }
}

