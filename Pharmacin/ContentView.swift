//
//  ContentView.swift
//  Pharmacin
//
//  Created by Devin Maleke on 19/11/23.
//

import SwiftUI

struct SidebarItem {
    let id = UUID()
    let icon: String
    let title: String
    let destination: AnyView
}

struct ContentView: View {
    @State private var selectedItem: SidebarItem?
    @State private var isExpanded = false
    @State private var isDashboard = false
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
    
    @State private var showSuccessPopup = false
    
    
    
    let sidebarItems: [SidebarItem] = [
        SidebarItem(icon: "house", title: "Home", destination: AnyView(DashboardView().zIndex(-2))),
        SidebarItem(icon: "person", title: "Profile", destination: AnyView(StokView().zIndex(-2))),
        SidebarItem(icon: "gear", title: "Settings", destination: AnyView(StokView().zIndex(-2))),
        SidebarItem(icon: "bell", title: "Notifications", destination: AnyView(StokView().zIndex(-2))),
        SidebarItem(icon: "message", title: "Messages", destination: AnyView(DashboardView().zIndex(-2))),
        
    ]
    
    var body: some View {
        NavigationStack {
            ZStack {
                HStack{
                    Rectangle()
                        .fill(Color.blue) // Warna rectangle dapat disesuaikan
                        .frame(width: isExpanded ? 274: 68)
                    Spacer()
                }.ignoresSafeArea()
                HStack(spacing: 0) {
                    ScrollView (showsIndicators: false){
                        VStack(alignment: .leading) {
                            Button(action: {
                                
                                isExpanded.toggle()
                                
                            }) {
                                if isExpanded{
                                    HStack{
                                        Image("PharmacinBlue")
                                        Text("Pharmacin")
                                            .font(.custom("PlusJakartaSans-Bold", size: 24))
                                            .foregroundColor(Color("Green"))
                                    }
                                    .padding(.top,40)
                                    
                                }else{
                                    HStack{
                                        Spacer()
                                        Image("PharmacinGreen")
                                        Spacer()
                                        
                                    }
                                    .padding(.top,40)
                                    
                                }
                            }
                            
                            .padding(.bottom,20)
                            
                            Button(action: {
                                print("Notifikasi")
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
                                        
                                    }
                                    
                                }else{
                                    
                                    HStack{
                                        Spacer()
                                        Image("Notifikasi")
                                        Spacer()
                                    }
                                    
                                    
                                    
                                    
                                }
                            }
                            
                            Divider()
                                .padding(.trailing,330)
                            
                            Button(action: {
                                isDashboard = true
                                isExpanded = false
                            }) {
                                if isExpanded{
                                    HStack{
                                        Image("Dashboard")
                                        Text("Dashboard")
                                            .font(.custom("PlusJakartaSans-Medium", size: 16))
                                            .foregroundColor(Color("LG"))
                                            .padding(.leading,10)
                                    }.frame(height:60)
                                    
                                }else{
                                    HStack{
                                        Spacer()
                                        Image("Dashboard")
                                        Spacer()
                                    }.frame(height:60)
                                    
                                }
                            }
                            
                            
                            Button(action: {
                                print("Penjualan")
                                isPenjualanSubMenuVisible = true
                            }) {
                                if isExpanded {
                                    ZStack{
                                        HStack (spacing: 20){
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
                                            }
                                            
                                            
                                            if isPenjualanSubMenuVisible {
                                                VStack (alignment:.leading){
                                                    Button(action: {
                                                        // Menutup submenu setelah dipilih (jika itu yang diinginkan)
                                                        isTambahPenjualan = true
                                                        isPenjualanSubMenuVisible = false
                                                        isExpanded = false
                                        
                                                        print("Sub-menu 1 dipilih")
                                                        // TODO: Tambahkan logika untuk tindakan sub-menu pertama
                                                    }) {
                                                        Text("Tambah Penjualan")
                                                            .font(.custom("PlusJakartaSans-Medium", size: 16))
                                                            .foregroundColor(Color("LG"))
                                                            .padding(.leading, 10)
                                                    }
                                                    Divider()
                                                    Button(action: {
                                                        // Aksi ketika sub-menu kedua dipilih
                                                        print("Sub-menu 2 dipilih")
                                                        // TODO: Tambahkan logika untuk tindakan sub-menu kedua
                                                    }) {
                                                        Text("Kelola Penjualan")
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
                                        }
                                    }.frame(height: 60)
                                }
                                
                                
                                else {
                                    HStack {
                                        Spacer()
                                        Image("Penjualan")
                                        Spacer()
                                    }.frame(height:60)
                                }
                            }
                            
                            Button(action: {
                                print("Stok")
                                isStokSubMenuVisible = true
                            }) {
                                if isExpanded{
                                    ZStack{
                                        HStack (spacing:20){
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
                                            }
                                            
                                            if isStokSubMenuVisible {
                                                VStack (alignment:.leading){
                                                    Button(action: {
                                                        // Menutup submenu setelah dipilih (jika itu yang diinginkan)
                                                        isDashboard = true
                                                        isPenjualanSubMenuVisible = false
                                                        isExpanded = false
                                                        
                                                        print("Sub-menu 1 dipilih")
                                                        // TODO: Tambahkan logika untuk tindakan sub-menu pertama
                                                    }) {
                                                        Text("Stok")
                                                            .font(.custom("PlusJakartaSans-Medium", size: 16))
                                                            .foregroundColor(Color("LG"))
                                                            .padding(.leading, 10)
                                                    }
                                                    Divider()
                                                    Button(action: {
                                                        // Aksi ketika sub-menu kedua dipilih
                                                        print("Sub-menu 2 dipilih")
                                                        // TODO: Tambahkan logika untuk tindakan sub-menu kedua
                                                    }) {
                                                        Text("Opname")
                                                            .font(.custom("PlusJakartaSans-Medium", size: 16))
                                                            .foregroundColor(Color("LG"))
                                                            .padding(.leading, 10)
                                                    }
                                                    Divider()
                                                    Button(action: {
                                                        // Aksi ketika sub-menu kedua dipilih
                                                        print("Sub-menu 3 dipilih")
                                                        // TODO: Tambahkan logika untuk tindakan sub-menu kedua
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
                                            
                                        }
                                    }.frame(height: 60)
                                }
                                
                                else{
                                    HStack{
                                        Spacer()
                                        Image("Stok")
                                        Spacer()
                                    }.frame(height:60)
                                    
                                }
                            }
                            
                            Button(action: {
                                print("Obat")
                                isObatSubMenuVisible = true
                            }) {
                                if isExpanded{
                                    ZStack{
                                        HStack(spacing:20){
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
                                            }
                                            
                                            if isObatSubMenuVisible {
                                                VStack (alignment:.leading){
                                                    Button(action: {
                                                        // Menutup submenu setelah dipilih (jika itu yang diinginkan)
                                                        isDashboard = true
                                                        isPenjualanSubMenuVisible = false
                                                        isExpanded = false
                                                        
                                                        print("Sub-menu 1 dipilih")
                                                        // TODO: Tambahkan logika untuk tindakan sub-menu pertama
                                                    }) {
                                                        Text("Kategori")
                                                            .font(.custom("PlusJakartaSans-Medium", size: 16))
                                                            .foregroundColor(Color("LG"))
                                                            .padding(.leading, 10)
                                                    }
                                                    Divider()
                                                    Button(action: {
                                                        // Aksi ketika sub-menu kedua dipilih
                                                        print("Sub-menu 2 dipilih")
                                                        // TODO: Tambahkan logika untuk tindakan sub-menu kedua
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
                                        }
                                    }.frame(height: 60)
                                    
                                }else{
                                    HStack{
                                        Spacer()
                                        Image("Obat")
                                        Spacer()
                                    }.frame(height:60)
                                    
                                }
                            }
                            
                            Button(action: {
                                print("Pabrikan")
                            }) {
                                if isExpanded{
                                    HStack{
                                        Image("Pabrikan")
                                        Text("Pabrikan")
                                            .font(.custom("PlusJakartaSans-Medium", size: 16))
                                            .foregroundColor(Color("LG"))
                                            .padding(.leading,10)
                                        
                                    }.frame(height:60)
                                    
                                }else{
                                    HStack{
                                        Spacer()
                                        Image("Pabrikan")
                                        Spacer()
                                    }.frame(height:60)
                                    
                                }
                            }
                            
                            Button(action: {
                                print("Pembelian")
                                isPembelianSubMenuVisible = true
                            }) {
                                if isExpanded{
                                    ZStack{
                                        HStack(spacing:20){
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
                                            }
                                            
                                            if isPembelianSubMenuVisible {
                                                VStack (alignment:.leading){
                                                    Button(action: {
                                                        // Menutup submenu setelah dipilih (jika itu yang diinginkan)
                                                        isDashboard = true
                                                        isPenjualanSubMenuVisible = false
                                                        isExpanded = false
                                                        
                                                        print("Sub-menu 1 dipilih")
                                                        // TODO: Tambahkan logika untuk tindakan sub-menu pertama
                                                    }) {
                                                        Text("Tambah Pembelian")
                                                            .font(.custom("PlusJakartaSans-Medium", size: 16))
                                                            .foregroundColor(Color("LG"))
                                                            .padding(.leading, 10)
                                                    }
                                                    Divider()
                                                    Button(action: {
                                                        // Aksi ketika sub-menu kedua dipilih
                                                        print("Sub-menu 2 dipilih")
                                                        // TODO: Tambahkan logika untuk tindakan sub-menu kedua
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
                                            
                                            
                                        }
                                    }.frame(height:60)
                                }else{
                                    HStack{
                                        Spacer()
                                        Image("Pembelian")
                                        Spacer()
                                    }.frame(height:60)
                                    
                                }
                            }
                            
                            Button(action: {
                                print("BukuBesar")
                                isBukuBesarSubMenuVisible = true
                            }) {
                                if isExpanded{
                                    ZStack{
                                        HStack (spacing:20){
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
                                            }
                                            
                                            if isBukuBesarSubMenuVisible {
                                                VStack (alignment:.leading){
                                                    Button(action: {
                                                        // Menutup submenu setelah dipilih (jika itu yang diinginkan)
                                                        isDashboard = true
                                                        isPenjualanSubMenuVisible = false
                                                        isExpanded = false
                                                        
                                                        print("Sub-menu 1 dipilih")
                                                        // TODO: Tambahkan logika untuk tindakan sub-menu pertama
                                                    }) {
                                                        Text("Penjualan")
                                                            .font(.custom("PlusJakartaSans-Medium", size: 16))
                                                            .foregroundColor(Color("LG"))
                                                            .padding(.leading, 10)
                                                    }
                                                    Divider()
                                                    Button(action: {
                                                        // Aksi ketika sub-menu kedua dipilih
                                                        print("Sub-menu 2 dipilih")
                                                        // TODO: Tambahkan logika untuk tindakan sub-menu kedua
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
                                        }
                                    }.frame(height:60)
                                    
                                }else{
                                    HStack{
                                        Spacer()
                                        Image("BukuBesar")
                                        Spacer()
                                    }.frame(height:60)
                                    
                                }
                            }
                            
                            Button(action: {
                                print("Manajemen")
                                isManajemenSubMenuVisible = true
                            }) {
                                if isExpanded{
                                    ZStack{
                                        HStack(spacing: 20){
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
                                            }
                                            
                                            
                                            if isManajemenSubMenuVisible {
                                                VStack (alignment:.leading){
                                                    Button(action: {
                                                        // Menutup submenu setelah dipilih (jika itu yang diinginkan)
                                                        isDashboard = true
                                                        isManajemenSubMenuVisible = false
                                                        isExpanded = false
                                                        
                                                        print("Sub-menu 1 dipilih")
                                                        // TODO: Tambahkan logika untuk tindakan sub-menu pertama
                                                    }) {
                                                        Text("Klinik")
                                                            .font(.custom("PlusJakartaSans-Medium", size: 16))
                                                            .foregroundColor(Color("LG"))
                                                            .padding(.leading, 10)
                                                    }
                                                    Divider()
                                                    Button(action: {
                                                        // Aksi ketika sub-menu kedua dipilih
                                                        print("Sub-menu 2 dipilih")
                                                        // TODO: Tambahkan logika untuk tindakan sub-menu kedua
                                                    }) {
                                                        Text("Karyawan")
                                                            .font(.custom("PlusJakartaSans-Medium", size: 16))
                                                            .foregroundColor(Color("LG"))
                                                            .padding(.leading, 10)
                                                    }
                                                    Divider()
                                                    Button(action: {
                                                        // Aksi ketika sub-menu kedua dipilih
                                                        print("Sub-menu 3 dipilih")
                                                        // TODO: Tambahkan logika untuk tindakan sub-menu kedua
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
                                            
                                        }
                                    }.frame(height:60)
                                    
                                }else{
                                    HStack{
                                        Spacer()
                                        Image("Manajemen")
                                        Spacer()
                                    }.frame(height:60)
                                    
                                }
                            }
                            
                           
                            
                            Button(action: {
                                print("TransaksiBaru")
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
                            
                            Divider()
                                .padding(.trailing,330)
                                .padding()
                            
                            
                            if isExpanded{
                                ZStack{
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
                                            isOptionSubMenuVisible = true
                                        } label: {
                                            Image("Option")
                                                .frame(width: 32, height: 32)
                                                .padding(.leading,50)
                                        }
                                        
                                        
                                    }.padding(.bottom,40)
                                    
                                    if isOptionSubMenuVisible{
                                        VStack (alignment:.leading){
                                            Button(action: {
                                                // Menutup submenu setelah dipilih (jika itu yang diinginkan)
                                                isStok = true
                                                isManajemenSubMenuVisible = false
                                                isExpanded = false
                                                
                                                print("Sub-menu 1 dipilih")
                                                // TODO: Tambahkan logika untuk tindakan sub-menu pertama
                                            }) {
                                                Text("Klinik")
                                                    .font(.custom("PlusJakartaSans-Medium", size: 16))
                                                    .foregroundColor(Color("LG"))
                                                    .padding(.leading, 10)
                                            }
                                            Divider()
                                            Button(action: {
                                                // Aksi ketika sub-menu kedua dipilih
                                                print("Sub-menu 2 dipilih")
                                                // TODO: Tambahkan logika untuk tindakan sub-menu kedua
                                            }) {
                                                Text("Karyawan")
                                                    .font(.custom("PlusJakartaSans-Medium", size: 16))
                                                    .foregroundColor(Color("LG"))
                                                    .padding(.leading, 10)
                                            }
                                        }
                                        .padding()
                                        .frame(width:265)
                                        .background(Color.white)
                                        .cornerRadius(8)
                                        .padding(.bottom,40)
                                        
                                        
                                    }
                                }
                                }.frame(height:30)
                        }else{
                            HStack{
                                Spacer()
                                Image("Profile")
                                Spacer()
                            }
                            .frame(height:30)
                            .padding(.bottom,40)
                            
                            
                        }
                        
                        
                        
                        Spacer()
                        
                    }
                    .padding(.horizontal,16)
                    .frame(maxHeight: .infinity)
                    .frame(width: isExpanded ? 600: 68)
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
                            Color.gray.opacity(isExpanded ? 0.5 : 0) // Tambahkan lapisan abu-abu dengan opacity
                        )
                }
                

                if isStok{
                    StokView()
                        .zIndex(-2)
                        .frame(maxWidth: .infinity)
                        .offset(x : 69)
                    
                }
                
                if isTambahPenjualan {
                    
                        PenjualanView(showSuccessPopup: $showSuccessPopup)
                            .zIndex(-2)
                            .frame(maxWidth: .infinity)
                            .offset(x: 69)
                            .overlay(
                                Color.gray.opacity(isExpanded ? 0.5 : 0) // Tambahkan lapisan abu-abu dengan opacity
                            )
                        
                        if showSuccessPopup {
                            ZStack {
                                // Background color with opacity
                                Color.black.opacity(0.5)
                                    .edgesIgnoringSafeArea(.all)
                                
                                // Popup content
                                VStack {
                                    // Your pop-up content here
                                    PopupBerhasil()
                                        .onTapGesture {
                                            showSuccessPopup = false
                                        }
                                    
                                }
                                
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

