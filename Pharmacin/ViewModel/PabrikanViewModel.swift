//
//  PabrikanViewModel.swift
//  Pharmacin
//
//  Created by Devin Maleke on 16/12/23.
//

import Foundation


class PabrikanViewModel: ObservableObject {
    
    @Published var pabrikan: [Pabrikan] = []
    
    func getAllPabrik() {
        
        let defaults = UserDefaults.standard
        guard let token = defaults.string(forKey: "jsonwebtoken") else {
            return
        }
        
        Webservice().getAllPabrik(token: token) { (result) in
            switch result {
                case .success(let pabrik):
                    DispatchQueue.main.async {
                        self.pabrikan = pabrik.data
                        print(self.pabrikan)
                    }
                case .failure(let error):
                    print(error.localizedDescription)
            }
        }
        
    }
    
}
