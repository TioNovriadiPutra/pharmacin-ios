//
//  SideMenuButton.swift
//  Pharmacin
//
//  Created by Devin Maleke on 28/01/24.
//

import SwiftUI
import UIKit

struct SideMenuButton: View {
    let imageName: String
    let title: String
    let isSelected: Bool
    let isExpanded: Bool
    let hasSubmenu: Bool
    let action: () -> Void
    
    
    var body: some View {
        VStack (alignment: .leading){
            if isExpanded{
                if hasSubmenu{
                    Button(action: action) {
                        HStack {
                            
                            Image(isSelected ? "\(imageName)Green" : imageName)
                            Text(title)
                                .font(.custom("PlusJakartaSans-Medium", size: 16))
                                .foregroundColor(Color("LG"))
                                .padding(.leading, 10)
                            
                            Spacer()
                            Image(systemName: "chevron.right")
                                .foregroundColor(Color("LG"))
                                .frame(width: 32, height: 32)
                                .padding(.leading,67)
                                .padding(.trailing,16)
                        }
                        .padding(.bottom, 24)
                    }
                }else{
                    Button(action: action) {
                        HStack {
                            Image(isSelected ? "\(imageName)Green" : imageName)
                            Text(title)
                                .font(.custom("PlusJakartaSans-Medium", size: 16))
                                .foregroundColor(Color("LG"))
                                .padding(.leading, 10)
                            Spacer()
                        }
                        .padding(.bottom, 24)
                    }
                }
            }
            else{
                Button(action: action) {
                    HStack {
                        Spacer()
                        Image(isSelected ? "\(imageName)Green" : imageName)
                        
                        Spacer()
                    }
                    .padding(.bottom, 24)
                }
            }
        }
    }
}

struct SubMenuModel : Identifiable {
    let id = UUID()
    let title: String
    let action: () -> Void
}


struct SubMenuButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.custom("PlusJakartaSans-Medium", size: 16))
                .foregroundColor(Color("LG"))
                .padding(.leading, 10)
                .padding(.bottom, 10)
        }
    }
}

struct SubMenuView: View {
    let isVisible: Bool
    let subMenuTitle: String
    let subMenuItems: [SubMenuModel]
    
    var body: some View {
        if isVisible {
            ZStack{
                VStack(alignment: .leading) {
                    ForEach(subMenuItems.indices) { index in
                        SubMenuButton(title: subMenuItems[index].title, action: subMenuItems[index].action)
                        if index != subMenuItems.indices.last {
                            Divider()
                        }
                    }
                }
                .padding()
                .frame(width: 265)
                .background(Color.white)
                .cornerRadius(8)
                .offset(x: 270)
            }
                
        }
    }
}

struct SideMenuView: View {
    
//    var body: some View{
//        VStack {
//            Text("Fixed at the top")
//                .frame(maxWidth: .infinity)
//                .frame(height: 100)
//                .background(.green)
//                .foregroundStyle(.white)
//            
//            ScrollView {
//                ForEach(0..<5) { i in
//                    Text("Scrolling")
//                        .frame(maxWidth: .infinity)
//                        .frame(height: 200)
//                        .background(.blue)
//                        .foregroundStyle(.white)
//                }
//            }
//            .clipShape(.rect)
//            //.scrollClipDisabled()
//            
//            Text("Fixed at the bottom")
//                .frame(maxWidth: .infinity)
//                .frame(height: 100)
//                .background(.green)
//                .foregroundStyle(.white)
//        }
//    }
    
    @Binding var isExpanded: Bool
    @Binding var selectedMenu: String
    @State var hasSubmenu = false
    @State private var isSubMenuVisible: [String: Bool] = ["Penjualan": false, "OtherMenu": false]

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                SideMenuButton(imageName: "OtherMenu", title: "Other Menu", isSelected: selectedMenu == "OtherMenu", isExpanded: isExpanded, hasSubmenu: true) {
                    isExpanded = true
                    selectedMenu = "OtherMenu"
                    isSubMenuVisible["Penjualan"] = false
                    isSubMenuVisible["OtherMenu"] = true
                    print("Other Menu button tapped!")
                }
                .overlay(
                    SubMenuView(isVisible: isSubMenuVisible["OtherMenu"] ?? false, subMenuTitle: "Other Menu", subMenuItems: [
                        SubMenuModel(title: "Submenu Item 1") {
                            print("Submenu Item 1 tapped!")
                        },
                        SubMenuModel(title: "Submenu Item 2") {
                            print("Submenu Item 2 tapped!")
                        }
                    ]),
                    alignment: .topLeading
                )
                
                .background(Color.lightBlue)
                .frame(width:300)
                
                ScrollView (.vertical,  showsIndicators: false) {
                    VStack {
                        SideMenuButton(imageName: "Penjualan", title: "Penjualan", isSelected: selectedMenu == "Penjualan", isExpanded: isExpanded, hasSubmenu: true) {
                            isExpanded = true
                            selectedMenu = "Penjualan"
                            isSubMenuVisible["Penjualan"] = true
                            isSubMenuVisible["OtherMenu"] = false
                            print("Penjualan button tapped!")
                        }
                        .overlay(
                            SubMenuView(isVisible: isSubMenuVisible["Penjualan"] ?? false, subMenuTitle: "Penjualan", subMenuItems: [
                                SubMenuModel(title: "Tambah Penjualan") {
                                    print("Tambah Penjualan tapped!")
                                },
                                SubMenuModel(title: "Kelola Penjualan") {
                                    print("Kelola Penjualan tapped!")
                                }
                            ])
                        )
                        .background(Color.yellow)
                       // Tambahkan background color di sini
                        
                        SideMenuButton(imageName: "OtherMenu", title: "Other Menu", isSelected: selectedMenu == "OtherMenu", isExpanded: isExpanded, hasSubmenu: true) {
                            isExpanded = true
                            selectedMenu = "OtherMenu"
                            isSubMenuVisible["Penjualan"] = false
                            isSubMenuVisible["OtherMenu"] = true
                            print("Other Menu button tapped!")
                        }
                        .overlay(
                            SubMenuView(isVisible: isSubMenuVisible["OtherMenu"] ?? false, subMenuTitle: "Other Menu", subMenuItems: [
                                SubMenuModel(title: "Submenu Item 1") {
                                    print("Submenu Item 1 tapped!")
                                },
                                SubMenuModel(title: "Submenu Item 2") {
                                    print("Submenu Item 2 tapped!")
                                }
                            ])
                        )
                        
                        .zIndex(1)
                        .frame(width: 300)
                        .background(Color.yellow)
                        
                        
                        // Tambahkan background color di sini
                    }
                    .padding() // Tambahkan padding di sini
                    .background(.purple)
                   
                    
                    
                }
                .frame(width: 500)
                .clipShape(.rect)
                
                
                .background(Color.green)// Tambahkan background color untuk ScrollView
            }
            .padding(.horizontal, 16)
            .frame(maxHeight: .infinity)
            .frame(width: isExpanded ? 300 : 68)
            .background(Color.black)
            Spacer()
            
        }
        .padding()
    }
        
}

extension UIScrollView {
  open override var clipsToBounds: Bool {
    get { false }
    set { }
  }
}


#Preview {
    SideMenuView(isExpanded: .constant(true), selectedMenu: .constant("Penjualan"))
    //SideMenuView()
}
