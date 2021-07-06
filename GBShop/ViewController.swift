//
//  ViewController.swift
//  GBShop
//
//  Created by Alexander Novikov on 24.06.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.logout()
        self.signUp()
        self.updateUserData()
    }
    
    func logout() {
        let appDelegate: AppDelegate? = UIApplication.shared.delegate as? AppDelegate
        appDelegate?.logoutResult()
    }
    
    func signUp() {
        let appDelegate: AppDelegate? = UIApplication.shared.delegate as? AppDelegate
        appDelegate?.signUpResult()
    }
    
    func updateUserData() {
        let appDelegate: AppDelegate? = UIApplication.shared.delegate as? AppDelegate
        appDelegate?.updateUserDataRequestResult()
    }
    
    func catalogData() {
        let appDelegate: AppDelegate? = UIApplication.shared.delegate as? AppDelegate
        appDelegate?.catalogDataRequestFactory()
    }
    
    func goodByID() {
        let appDelegate: AppDelegate? = UIApplication.shared.delegate as? AppDelegate
        appDelegate?.goodByIDRequestFactory()
    }

}

