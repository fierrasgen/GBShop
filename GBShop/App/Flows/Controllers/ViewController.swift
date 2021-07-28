//
//  ViewController.swift
//  GBShop
//
//  Created by Alexander Novikov on 24.06.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let requestFactory = RequestFactory()
    var commentID: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.logout()
        self.catalogData()
        self.goodByID()
        self.addReview()
        self.getReview()
        self.removeReview()
        self.addToCart()
        self.getCard()
        self.removeFromCart()
        self.payCart()
    }
    
    func logout() {
        let auth = requestFactory.makeAuthRequestFatory()
        auth.logout(userID: 123) { response in
            switch response.result {
            case .success(let logout):
                print(logout)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func catalogData() {
        let product = requestFactory.makeProductRequestFatory()
        product.catalog { response in
            switch response.result {
            case .success(let catalog):
                print(catalog)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func goodByID() {
        let product = requestFactory.makeProductRequestFatory()
        product.product(by: 123) { response in
            switch response.result {
            case .success(let good):
                print(good)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func addReview() {
        let review = requestFactory.makeReviewRequestFatory()
        review.add(userID: 123, productID: 456, text: "Review"){ response in
            switch response.result {
            case .success(let add):
                print(add)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func getReview() {
        let review = requestFactory.makeReviewRequestFatory()
        review.get(productID: 456) { response in
            switch response.result {
            case .success(let reviews):
                print(reviews)
                self.commentID = reviews.first?.commentID
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func removeReview() {
        guard let commentID = self.commentID else { return }
        
        let review = requestFactory.makeReviewRequestFatory()
        
        review.remove(commentID: commentID) { response in
            switch response.result {
            case .success(let remove):
                print(remove)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func addToCart() {
        let cart = requestFactory.makeCartRequestFactory()
        
        cart.add(userID: 123, productID: 123, quantity: 1) { response in
            switch response.result {
            case .success(let add):
                print(add)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
        
        cart.add(userID: 123, productID: 456, quantity: 1) { response in
            switch response.result {
            case .success(let add):
                print(add)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func getCard() {
        let cart = requestFactory.makeCartRequestFactory()
        
        cart.get(userID: 123) { response in
            switch response.result {
            case .success(let get):
                print(get)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func removeFromCart() {
        let cart = requestFactory.makeCartRequestFactory()
        
        cart.remove(userID: 123, productID: 123) { response in
            switch response.result {
            case .success(let remove):
                print(remove)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func payCart() {
        let cart = requestFactory.makeCartRequestFactory()
        
        cart.pay(userID: 123, money: 1000) { response in
            switch response.result {
            case .success(let pay):
                print(pay)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
