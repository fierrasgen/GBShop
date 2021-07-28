//
//  CartRequestFactory.swift
//  GBShop
//
//  Created by Alexander Novikov on 26.07.2021.
//

import Foundation
import Alamofire

protocol CartRequestFactory {
    func add(userID: Int, productID: Int, quantity: Int, completionHandler: @escaping (AFDataResponse<AddCartResult>) -> Void)
    func get(userID: Int, completionHandler: @escaping (AFDataResponse<GetCartResult>) -> Void)
    func remove(userID: Int, productID: Int, completionHandler: @escaping (AFDataResponse<RemoveCartResult>) -> Void)
    func pay(userID: Int, money: Int, completionHandler: @escaping (AFDataResponse<PayCartResult>) -> Void)
}
