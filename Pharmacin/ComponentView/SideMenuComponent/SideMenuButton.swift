//
//  SideMenuButton.swift
//  Pharmacin
//
//  Created by Devin Maleke on 28/01/24.
//

import SwiftUI

struct SideMenuButton: View {
    let imageName: String
    let title: String
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
                Spacer()
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

#Preview {
    SideMenuButton(imageName: "Dashboard", title: "Dashboard", isSelected: true, action: {
        print("Halo")
    })
}
