//
//  LoginViewModel.swift
//  Pharmacin
//
//  Created by Devin Maleke on 21/12/23.
//

import Foundation

class LoginViewModel: ObservableObject {
    
    var email: String = ""
    var password: String = ""
    @Published var isAuthenticated: Bool = false
    @Published var hasError: Bool = false
    
    func login() {
        
        let defaults = UserDefaults.standard
        
        Webservice().login(email: email, password: password) { result in
            switch result {
                case .success(let token):
                    defaults.setValue(token, forKey: "jsonwebtoken")
                    DispatchQueue.main.async {
                        self.isAuthenticated = true
                        print(token)
                    }
                case .failure(let error):
                    print(error.localizedDescription)
                    self.hasError = true
            }
        }
    }
    
    func signout() {
           
           let defaults = UserDefaults.standard
           defaults.removeObject(forKey: "jsonwebtoken")
           DispatchQueue.main.async {
               self.isAuthenticated = false
           }
           
       }
    
}
