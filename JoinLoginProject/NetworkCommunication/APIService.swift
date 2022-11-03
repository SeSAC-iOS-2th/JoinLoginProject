//
//  APIService.swift
//  JoinLoginProject
//
//  Created by 이중원 on 2022/11/02.
//

import Foundation
import Alamofire



class APIService {
    
    func join(username: String, email: String, password: String) {
        let api = MemoleaseAPI.join(username: username, email: email, password: password)
        
        AF.request(api.url, method: .post, parameters: api.parameters, headers: api.headers).responseString { response in
            print(response)
        }
    }
    
    func login(email: String, password: String) {
        let api = MemoleaseAPI.login(email: email, password: password)
        
        AF.request(api.url, method: .post, parameters: api.parameters, headers: api.headers).validate(statusCode: 200...299).responseDecodable(of: Login.self) { response in
            
            switch response.result {
            case .success(let data):
                print(data.token)
                UserDefaults.standard.set(data.token, forKey: "token")
                
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func profile() {
        let api = MemoleaseAPI.profile
        
        AF.request(api.url, method: .get, headers: api.headers).responseDecodable(of: Profile.self) { response in
            
            switch response.result {
            case .success(let data):
                print(data)
                
            case .failure(let error):
                print(error)
            }
        }
    }
    
}
