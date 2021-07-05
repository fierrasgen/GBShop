//
//  LoginResult.swift
//  GBShop
//
//  Created by Alexander Novikov on 01.07.2021.
//

import Foundation

struct LoginResult: Codable {
    let result: Int
    let user: User
    let authToken: String
}
