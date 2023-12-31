//
//  Webservice.swift
//  Pharmacin
//
//  Created by Devin Maleke on 21/12/23.
//

import Foundation

enum AuthenticationError: Error {
    case invalidCredentials
    case custom(errorMessage: String)
}

enum NetworkError: Error {
    case invalidURL
    case noData
    case decodingError
}

struct LoginRequestBody: Codable {
    let email: String
    let password: String
}

struct LoginResponse: Codable {
    let token: String?
    let message: String?
    let userId: Int?
    let clinicId: Int?
}

class Webservice {
    
        let prefixUrl = "http://3.87.115.81:3333"
        
        func getAllPabrik(token: String, completion: @escaping (Result<PabrikanDataModel, NetworkError>) -> Void) {
    
            guard let url = URL(string: "\(prefixUrl)/factory") else {
                completion(.failure(.invalidURL))
                return
            }
    
            var request = URLRequest(url: url)
            request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
    
            URLSession.shared.dataTask(with: request) { (data, response, error) in
    
                guard let data = data, error == nil else {
                    completion(.failure(.noData))
                    return
                }
    
                guard let pabrik = try? JSONDecoder().decode(PabrikanDataModel.self, from: data) else {
                    completion(.failure(.decodingError))
                    return
                }
    
                completion(.success(pabrik))
    
    
    
            }.resume()
    
    
        }
    
//    func getAllAccounts(token: String, completion: @escaping (Result<[Account], NetworkError>) -> Void) {
//        
//        guard let url = URL(string: "https://strong-spangled-apartment.glitch.me/accounts") else {
//            completion(.failure(.invalidURL))
//            return
//        }
//        
//        var request = URLRequest(url: url)
//        request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
//        
//        URLSession.shared.dataTask(with: request) { (data, response, error) in
//            
//            guard let data = data, error == nil else {
//                completion(.failure(.noData))
//                return
//            }
//            
//            guard let accounts = try? JSONDecoder().decode([Account].self, from: data) else {
//                completion(.failure(.decodingError))
//                return
//            }
//            
//            completion(.success(accounts))
//            
//            
//            
//        }.resume()
//        
//        
//    }
    
    
    func login(email: String, password: String, completion: @escaping (Result<String, AuthenticationError>) -> Void) {
        
        guard let url = URL(string: "\(prefixUrl)/auth/login") else {
            completion(.failure(.custom(errorMessage: "URL is not correct")))
            return
        }
        
        let body = LoginRequestBody(email: email, password: password)
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = try? JSONEncoder().encode(body)
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            guard let data = data, error == nil else {
                completion(.failure(.custom(errorMessage: "No data")))
                return
            }
            
            try! JSONDecoder().decode(LoginResponse.self, from: data)
            
            guard let loginResponse = try? JSONDecoder().decode(LoginResponse.self, from: data) else {
                completion(.failure(.invalidCredentials))
                return
            }
            
            guard let token = loginResponse.token else {
                completion(.failure(.invalidCredentials))
                return
            }
            
            completion(.success(token))
            
        }.resume()
        
    }
    
    
    
}

