//
//  Endpoint.swift
//  JoinLoginProject
//
//  Created by 이중원 on 2022/11/02.
//

import Foundation
import Alamofire

enum MemoleaseAPI {
    case join(username: String, email: String, password: String)
    case login(email: String, password: String)
    case profile
}

extension MemoleaseAPI {
    
    var url: URL {
        switch self {
        case .join:
            return URL(string: "http://api.memolease.com/api/v1/users/signup")!
        case .login:
            return URL(string: "http://api.memolease.com/api/v1/users/login")!
        case .profile:
            return URL(string: "http://api.memolease.com/api/v1/users/me")!
        }
    }
    
    var headers: HTTPHeaders {
        switch self {
        case .join, .login:
            return ["Content-Type": "application/x-www-form-urlencoded"]
        case .profile:
            return [
                "Authorization": "Bearer \(UserDefaults.standard.string(forKey: "token")!)",
                "Content-Type": "application/x-www-form-urlencoded"
            ]
        }
    }
    
    var parameters: [String: String] {
            
        switch self {
        case .join(let username, let email, let password):
            return [
                "username": username,
                "email": email,
                "password": password
            ]
        case .login(let email, let password):
            return [
                "email": email,
                "password": password
            ]
        default: return ["":""]
        }
    }
    
}
