//
//  ContentView.swift
//  Pharmacin
//
//  Created by Devin Maleke on 19/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedMenu = "Dashboard"
    
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
    @State private var showTambahAkunPopUp = false
    @State private var showEditInfoKlinikPopUp = false
    
    
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
                                
                                
                                
                                    //MARK: DASHBOARD
//                                ScrollView (.vertical) {
                                    HStack{
                                        VStack{
                                            SideMenuButton(imageName: "Dashboard", title: "Dashboard", isSelected: selectedMenu == "Dashboard", isExpanded: isExpanded, hasSubmenu: false) {
                                                isExpanded.toggle()
                                                selectedMenu = "Dashboard"
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
                                                
                                                print("Dashboard button tapped!")
                                            }
                                            
                                            //MARK: PENJUALAN
                                            
                                            SideMenuButton(imageName: "Penjualan", title: "Penjualan", isSelected: selectedMenu == "Penjualan", isExpanded: isExpanded, hasSubmenu: true) {
                                                isExpanded = true
                                                selectedMenu = "Penjualan"
                                                // Set visibilitas submenu untuk Penjualan ke true saat tombol Penjualan ditekan
                                                isStokSubMenuVisible = false
                                                isPenjualanSubMenuVisible = true
                                                isObatSubMenuVisible = false
                                                isPembelianSubMenuVisible = false
                                                isBukuBesarSubMenuVisible = false
                                                isManajemenSubMenuVisible = false
                                                isOptionSubMenuVisible = false
                                                print("Penjualan button tapped!")
                                            }
                                            .overlay(
                                                SubMenuView(isVisible: isPenjualanSubMenuVisible, subMenuTitle: "Penjualan", subMenuItems: [
                                                    SubMenuModel(title: "Tambah Penjualan") {
                                                        // Handle Tambah Penjualan action
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
                                                        print("Tambah Penjualan tapped!")
                                                    },
                                                    SubMenuModel(title: "Kelola Penjualan") {
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
                                                        print("Kelola Penjualan tapped!")
                                                    }
                                                ]),
                                                
                                                alignment: .topLeading
                                                
                                            )
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            //MARK: STOK
                                            
                                            SideMenuButton(imageName: "Stok", title: "Stok", isSelected: selectedMenu == "Stok", isExpanded: isExpanded, hasSubmenu: true) {
                                                //isExpanded = true
                                                selectedMenu = "Stok"
                                                // Set visibilitas submenu untuk Penjualan ke true saat tombol Penjualan ditekan
                                                isExpanded = true
                                                isStokSubMenuVisible = true
                                                isPenjualanSubMenuVisible = false
                                                isObatSubMenuVisible = false
                                                isPembelianSubMenuVisible = false
                                                isBukuBesarSubMenuVisible = false
                                                isManajemenSubMenuVisible = false
                                                isOptionSubMenuVisible = false
                                                print("Penjualan button tapped!")
                                            }
                                            .overlay(
                                                SubMenuView(isVisible: isStokSubMenuVisible, subMenuTitle: "Stok", subMenuItems: [
                                                    SubMenuModel(title: "Stok") {
                                                        // Handle Tambah Penjualan action
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
                                                        print("Tambah Penjualan tapped!")
                                                    },
                                                    SubMenuModel(title: "Opname") {
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
                                                        print("Kelola Penjualan tapped!")
                                                    },
                                                    SubMenuModel(title: "Riwayat Opname") {
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
                                                        print("Kelola Penjualan tapped!")
                                                    }
                                                    
                                                ]),
                                                alignment: .topLeading
                                            )
                                            
                                            //MARK: OBAT
                                            
                                            SideMenuButton(imageName: "Obat", title: "Obat", isSelected: selectedMenu == "Obat", isExpanded: isExpanded, hasSubmenu: true) {
                                                //isExpanded = true
                                                selectedMenu = "Obat"
                                                // Set visibilitas submenu untuk Penjualan ke true saat tombol Penjualan ditekan
                                                isExpanded = true
                                                isStokSubMenuVisible = false
                                                isPenjualanSubMenuVisible = false
                                                isObatSubMenuVisible = true
                                                isPembelianSubMenuVisible = false
                                                isBukuBesarSubMenuVisible = false
                                                isManajemenSubMenuVisible = false
                                                isOptionSubMenuVisible = false
                                                print("Penjualan button tapped!")
                                            }
                                            .overlay(
                                                SubMenuView(isVisible: isObatSubMenuVisible, subMenuTitle: "Obat", subMenuItems: [
                                                    SubMenuModel(title: "Kategori") {
                                                        // Handle Tambah Penjualan action
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
                                                        print("Tambah Penjualan tapped!")
                                                    },
                                                    SubMenuModel(title: "Kelola Obat") {
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
                                                        print("Kelola Penjualan tapped!")
                                                    }
                                                    
                                                ]),
                                                alignment: .topLeading
                                            )
                                            
                                            //MARK: PABRIKAN
                                            
                                            SideMenuButton(imageName: "Pabrikan", title: "Pabrikan", isSelected: selectedMenu == "Pabrikan", isExpanded: isExpanded, hasSubmenu: false) {
                                                isExpanded.toggle()
                                                selectedMenu = "Pabrikan"
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
                                                print("Dashboard button tapped!")
                                            }
                                            
                                            //MARK: PEMBELIAN
                                            
                                            SideMenuButton(imageName: "Pembelian", title: "Pembelian", isSelected: selectedMenu == "Pembelian", isExpanded: isExpanded, hasSubmenu: true) {
                                                //isExpanded = true
                                                selectedMenu = "Pembelian"
                                                // Set visibilitas submenu untuk Penjualan ke true saat tombol Penjualan ditekan
                                                isExpanded = true
                                                isStokSubMenuVisible = false
                                                isPenjualanSubMenuVisible = false
                                                isObatSubMenuVisible = false
                                                isPembelianSubMenuVisible = true
                                                isBukuBesarSubMenuVisible = false
                                                isManajemenSubMenuVisible = false
                                                isOptionSubMenuVisible = false
                                                print("Penjualan button tapped!")
                                            }
                                            .overlay(
                                                SubMenuView(isVisible: isPembelianSubMenuVisible, subMenuTitle: "Pembelian", subMenuItems: [
                                                    SubMenuModel(title: "Tambah Pembelian") {
                                                        // Handle Tambah Penjualan action
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
                                                        print("Tambah Penjualan tapped!")
                                                    },
                                                    SubMenuModel(title: "Kelola Pembelian") {
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
                                                        print("Kelola Penjualan tapped!")
                                                    }
                                                    
                                                ]),
                                                alignment: .topLeading
                                            )
                                            
                                            //MARK: BUKU BESAR
                                            
                                            SideMenuButton(imageName: "BukuBesar", title: "BukuBesar", isSelected: selectedMenu == "BukuBesar", isExpanded: isExpanded, hasSubmenu: true) {
                                                //isExpanded = true
                                                selectedMenu = "BukuBesar"
                                                // Set visibilitas submenu untuk Penjualan ke true saat tombol Penjualan ditekan
                                                isExpanded = true
                                                isStokSubMenuVisible = false
                                                isPenjualanSubMenuVisible = false
                                                isObatSubMenuVisible = false
                                                isPembelianSubMenuVisible = false
                                                isBukuBesarSubMenuVisible = true
                                                isManajemenSubMenuVisible = false
                                                isOptionSubMenuVisible = false
                                                print("Penjualan button tapped!")
                                            }
                                            .overlay(
                                                SubMenuView(isVisible: isBukuBesarSubMenuVisible, subMenuTitle: "Buku Besar", subMenuItems: [
                                                    SubMenuModel(title: "Penjualan") {
                                                        // Handle Tambah Penjualan action
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
                                                        print("Tambah Penjualan tapped!")
                                                    },
                                                    SubMenuModel(title: "Pembelian") {
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
                                                        print("Kelola Penjualan tapped!")
                                                    }
                                                    
                                                ]),
                                                alignment: .topLeading
                                            )
                                            
                                            //MARK: MANAJEMEN
                                            
                                            SideMenuButton(imageName: "Manajemen", title: "Manajemen", isSelected: selectedMenu == "Manajemen", isExpanded: isExpanded, hasSubmenu: true) {
                                                //isExpanded = true
                                                selectedMenu = "Manajemen"
                                                // Set visibilitas submenu untuk Penjualan ke true saat tombol Penjualan ditekan
                                                isExpanded = true
                                                isStokSubMenuVisible = false
                                                isPenjualanSubMenuVisible = false
                                                isObatSubMenuVisible = false
                                                isPembelianSubMenuVisible = false
                                                isBukuBesarSubMenuVisible = false
                                                isManajemenSubMenuVisible = true
                                                isOptionSubMenuVisible = false
                                                print("Penjualan button tapped!")
                                            }
                                            .overlay(
                                                SubMenuView(isVisible: isManajemenSubMenuVisible, subMenuTitle: "Manajemen", subMenuItems: [
                                                    SubMenuModel(title: "Klinik") {
                                                        // Handle Tambah Penjualan action
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
                                                        print("Tambah Penjualan tapped!")
                                                    },
                                                    SubMenuModel(title: "Karyawan") {
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
                                                        print("Kelola Penjualan tapped!")
                                                    },
                                                    SubMenuModel(title: "Riwayat Kasir") {
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
                                                        print("Kelola Penjualan tapped!")
                                                    }
                                                    
                                                ]),
                                                alignment: .topLeading
                                            ).allowsHitTesting(true)
                                            
                                                
                                        }
                                        
                                        
                                    }
                                    
                                    
//                                }
                                
                                
                                
                                     
                                
                                Spacer()
                                
                                Button(action: {
                                    selectedMenu = "Penjualan"
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
                                    Button(action: {
                                        isExpanded = true
                                        isStokSubMenuVisible = false
                                        isPenjualanSubMenuVisible = false
                                        isObatSubMenuVisible = false
                                        isPembelianSubMenuVisible = false
                                        isBukuBesarSubMenuVisible = false
                                        isManajemenSubMenuVisible = false
                                        isOptionSubMenuVisible = true
                                    }){
                                        HStack{
                                            Spacer()
                                            Image("Profile")
                                            Spacer()
                                        }
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
                        ManajemenKlinikView(showEditInfoKlinikPopUp: $showEditInfoKlinikPopUp)
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
                        
                        if showEditInfoKlinikPopUp {
                            ZStack {
                                // Background color with opacity
                                Color.black.opacity(0.4)
                                    .edgesIgnoringSafeArea(.all)
                                
                                // Popup content
                                HStack {
                                    // Your pop-up content here
                                    EditInfoKlinikPopUp(showEditInfoKlinikPopUp: $showEditInfoKlinikPopUp)
                                    Spacer()
                                }
                                
                            }
                        }
                        
                    }
                    
                    if isManajemenKaryawanSubMenu{
                        ManajemenAkunView(showTambahAkunPopUp: $showTambahAkunPopUp)
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
                        
                        if showTambahAkunPopUp {
                            ZStack {
                                // Background color with opacity
                                Color.black.opacity(0.4)
                                    .edgesIgnoringSafeArea(.all)
                                
                                // Popup content
                                HStack {
                                    // Your pop-up content here
                                    TambahAkunPopUp(showTambahAkunPopUp: $showTambahAkunPopUp)
                                    Spacer()
                                }
                                
                            }
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

