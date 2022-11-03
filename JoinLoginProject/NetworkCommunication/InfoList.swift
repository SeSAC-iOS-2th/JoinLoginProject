//
//  InfoList.swift
//  JoinLoginProject
//
//  Created by 이중원 on 2022/11/03.
//

import Foundation



struct User: Codable {
    let photo: String
    let email: String
    let username: String
}

struct Profile: Codable {
    let user: User
}

struct Login: Codable {
    let token: String
}
