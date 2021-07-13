//
//  GoodResult.swift
//  GBShop
//
//  Created by Alexander Novikov on 06.07.2021.
//

import Foundation

struct GoodResult: Codable {
    let result: Int
    let name: String
    let price: Int
    let description: String
    
    enum CodingKeys: String, CodingKey {
        case result
        case name = "product_name"
        case price = "product_price"
        case description = "product_description"
    }
}
