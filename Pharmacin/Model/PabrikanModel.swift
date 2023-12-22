//
//  PabrikanModel.swift
//  Pharmacin
//
//  Created by Devin Maleke on 15/12/23.
//

import Foundation


struct PabrikanDataModel: Codable{
    let message: String
    let data : [Pabrikan]
}

struct Pabrikan: Codable{
    let id: Int
    let clinic_name: String
    let clinic_phone: String
    let cashier_status: Bool
    let drugFactories: [String]
}







//struct Pabrikan: Codable {
//    let id: String
//    let namaPabrik: String
//    let email: String
//    let nomorTelepon: String
//    
//    init(id: String, namaPabrik: String, email: String, nomorTelepon: String) {
//        self.id = id
//        self.namaPabrik = namaPabrik
//        self.email = email
//        self.nomorTelepon = nomorTelepon
//    }
//}
//
//extension Pabrikan {
//    static let all = [
//        Pabrikan(id: "1", namaPabrik: "PabrikA", email: "pabrikA@gmail.com", nomorTelepon: "123456788"),
//        Pabrikan(id: "2", namaPabrik: "PabrikB", email: "pabrikB@gmail.com", nomorTelepon: "123456788"),
//        Pabrikan(id: "3", namaPabrik: "PabrikC", email: "pabrikC@gmail.com", nomorTelepon: "123456788"),
//    ]
//}





