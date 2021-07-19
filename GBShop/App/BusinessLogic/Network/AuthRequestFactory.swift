//
//  AuthRequestFactory.swift
//  GBShop
//
//  Created by Alexander Novikov on 01.07.2021.
//

import Foundation
import Alamofire

protocol AuthRequestFactory {
    func login(userName: String, password: String, completionHandler: @escaping (AFDataResponse<LoginResult>) -> Void)
    func logout(userID: Int, completionHandler: @escaping (AFDataResponse<LogoutResult>) -> Void)
    func signUp(userData: UserData, completionHandler: @escaping (AFDataResponse<SignUpResult>) -> Void)
    func updateUserData(userData: UserData, completionHandler: @escaping (AFDataResponse<UpdateUserDataResult>) -> Void)
}
