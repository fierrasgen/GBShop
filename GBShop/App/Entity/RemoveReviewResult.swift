//
//  RemoveReviewResult.swift
//  GBShop
//
//  Created by Alexander Novikov on 15.07.2021.
//

import Foundation

struct RemoveReviewResult: Codable {
    let result: Int
    let errorMessage: String?
    
    enum CodingKeys: String, CodingKey {
        case result
        case errorMessage = "error_message"
    }
}
