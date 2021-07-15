//
//  AddReviewResult.swift
//  GBShop
//
//  Created by Alexander Novikov on 15.07.2021.
//

import Foundation

struct AddReviewResult: Codable {
    let result: Int
    let userMessage: String?
    let errorMessage: String?
    
    enum CodingKeys: String, CodingKey {
        case result
        case userMessage = "user_message"
        case errorMessage = "error_message"
    }
}
