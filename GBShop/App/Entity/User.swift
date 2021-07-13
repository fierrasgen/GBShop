//
//  User.swift
//  GBShop
//
//  Created by Alexander Novikov on 01.07.2021.
//

import Foundation

struct User: Codable {
    let id: Int
    let login: String
    let name: String
    let lastname: String
    
    enum CodingKeys: String, CodingKey {
        case id = "id_user"
        case login = "user_login"
        case name = "user_name"
        case lastname = "user_lastname"
    }
}

struct UserData {
    var id: Int
    var username: String
    var password: String
    var email: String
    var gender: String
    var creditCard: String
    var bio: String
}
