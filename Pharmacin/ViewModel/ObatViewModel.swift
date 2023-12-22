//
//  ObatViewModel.swift
//  Pharmacin
//
//  Created by Devin Maleke on 18/12/23.
//

import Foundation


class ObatViewModel: ObservableObject {
    @Published var obatList: [Obat] = Obat.all
}
