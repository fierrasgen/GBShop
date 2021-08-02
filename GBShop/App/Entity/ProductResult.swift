//
//  ProductResult.swift
//  GBShop
//
//  Created by Alexander Novikov on 06.07.2021.
//

import Foundation

struct ProductResult: Codable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    
    enum CodingKeys: String, CodingKey {
        case id = "id_product"
        case name = "product_name"
        case price = "price"
        case image = "image"
        case description = "description"
    }
    
    init() {
        id = 0
        name = ""
        image = ""
        price = 0
        description = ""
    }
}
