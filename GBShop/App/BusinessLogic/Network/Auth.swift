//
//  Auth.swift
//  GBShop
//
//  Created by Alexander Novikov on 01.07.2021.
//

import Foundation
import Alamofire

class Auth: AbstractRequestFactory {
    let errorParser: AbstractErrorParser
    let sessionManager: Session
    let queue: DispatchQueue
    let baseUrl: URL
    
    init(
        baseURL: URL,
        errorParser: AbstractErrorParser,
        sessionManager: Session,
        queue: DispatchQueue = DispatchQueue.global(qos: .utility)
    ) {
        self.baseUrl = baseURL
        self.errorParser = errorParser
        self.sessionManager = sessionManager
        self.queue = queue
    }
}

extension Auth: AuthRequestFactory {
    func login(userName: String, password: String, completionHandler: @escaping (AFDataResponse<LoginResult>) -> Void) {
        let requestModel = Login(baseUrl: baseUrl, login: userName, password: password)
        self.request(request: requestModel, completionHandler: completionHandler)
    }
    
    func logout(userID: Int, completionHandler: @escaping (AFDataResponse<LogoutResult>) -> Void) {
        let requestModel = LogoutUser(baseUrl: baseUrl, userID: userID)
        self.request(request: requestModel, completionHandler: completionHandler)
    }
    
    func signUp(userData: UserData, completionHandler: @escaping (AFDataResponse<SignUpResult>) -> Void) {
        let requestModel = SignUpUser(baseUrl: baseUrl, userData: userData)
        self.request(request: requestModel, completionHandler: completionHandler)
    }
    
    func updateUserData(userData: UserData, completionHandler: @escaping (AFDataResponse<UpdateUserDataResult>) -> Void) {
        let requestModel = UpdateUserData(baseUrl: baseUrl, userData: userData)
        self.request(request: requestModel, completionHandler: completionHandler)
    }
}

extension Auth {
    struct Login: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .post
        let path: String = "signin"
        
        let login: String
        let password: String
        var parameters: Parameters? {
            return [
                "username": login,
                "password": password
            ]
        }
    }
    
    struct LogoutUser: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .post
        let path: String = "signout"
        
        let userID: Int
        var parameters: Parameters? {
            return [
                "user_id": userID,
            ]
        }
    }
    
    struct SignUpUser: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .post
        let path: String = "register"
        
        let userData: UserData
        var parameters: Parameters? {
            return [
                "id_user": userData.id,
                "username": userData.username,
                "password": userData.password,
                "email": userData.email,
                "gender": userData.gender,
                "credit_card": userData.creditCard,
                "bio": userData.bio
            ]
        }
    }
    
    struct UpdateUserData: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .put
        let path: String = "updateUserData"
        
        let userData: UserData
        var parameters: Parameters? {
            return [
                "id_user": userData.id,
                "username": userData.username,
                "password": userData.password,
                "email": userData.email,
                "gender": userData.gender,
                "credit_card": userData.creditCard,
                "bio": userData.bio
            ]
        }
    }
}

