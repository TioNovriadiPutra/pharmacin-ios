//
//  KlinikModel.swift
//  Pharmacin
//
//  Created by Devin Maleke on 22/12/23.
//

import Foundation

struct Klinik: Codable{
    let id: Int
    let clinic_name: String
    let clinic_phone: String
    let cashier_status: Bool
}
