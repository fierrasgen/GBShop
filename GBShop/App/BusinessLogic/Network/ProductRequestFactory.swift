//
//  ProductRequestFactory.swift
//  GBShop
//
//  Created by Alexander Novikov on 06.07.2021.
//

import Foundation
import Alamofire

protocol ProductRequestFactory {
    func catalog(completionHandler: @escaping (AFDataResponse<[ProductResult]>) -> Void)
    func product(by id: Int, completionHandler: @escaping (AFDataResponse<GoodResult>) -> Void)
}
