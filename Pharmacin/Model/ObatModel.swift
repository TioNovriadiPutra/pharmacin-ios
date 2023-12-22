//
//  ObatModel.swift
//  Pharmacin
//
//  Created by Devin Maleke on 18/12/23.
//

import Foundation

struct Obat: Codable {
    let id: String
    let namaObat: String
    let namaGenerik: String
    let Takaran: Int
    let Kategori: String
    let Rak: Int
    let Pabrikan: String
    let HargaBeli: String
    let HargaJual: String
    
    init(id: String, namaObat: String, namaGenerik: String, Takaran: Int, Kategori: String, Rak: Int, Pabrikan: String, HargaBeli: String, HargaJual: String) {
        self.id = id
        self.namaObat = namaObat
        self.namaGenerik = namaGenerik
        self.Takaran = Takaran
        self.Kategori = Kategori
        self.Rak = Rak
        self.Pabrikan = Pabrikan
        self.HargaBeli = HargaBeli
        self.HargaJual = HargaJual
    }
}

extension Obat {
    static let all = [
        Obat(id: "1", namaObat: "obat1", namaGenerik: "obat1", Takaran: 2, Kategori: "obat1", Rak: 3, Pabrikan: "obat1", HargaBeli: "obat1", HargaJual: "obat1"),
        Obat(id: "2", namaObat: "obat2", namaGenerik: "obat2", Takaran: 3, Kategori: "obat2", Rak: 4, Pabrikan: "obat2", HargaBeli: "obat2", HargaJual: "obat2"),
        Obat(id: "3", namaObat: "obat3", namaGenerik: "obat3", Takaran: 5, Kategori: "obat3", Rak: 6, Pabrikan: "obat3", HargaBeli: "obat3", HargaJual: "obat3")
    ]
    
    static let obatSample = Obat.all[0]
}



struct Drug: Codable{
    let id: Int
    
}

