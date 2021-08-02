//
//  UpdateUserViewController.swift
//  GBShop
//
//  Created by Alexander Novikov on 23.07.2021.
//

import UIKit

class UpdateUserViewController: UIViewController {
    
    let requestFactory = RequestFactory()
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBAction func editButton(_ sender: Any) {
        self.updateUserData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "Добро пожаловать!"
    }
    
    func updateUserData() {
        let auth = requestFactory.makeAuthRequestFatory()
        let user = UserData(
            id: 123,
            username: "Somebody",
            password: "mypassword",
            email: "some@some.ru",
            gender: "m",
            creditCard: "9872389-2424-234224-234",
            bio: "This is good! I think I will switch to another language"
        )
        
        auth.updateUserData(userData: user) { response in
            switch response.result {
            case .success(let update):
                print(update)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
