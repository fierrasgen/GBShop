//
//  RegistrationViewController.swift
//  GBShop
//
//  Created by Alexander Novikov on 21.07.2021.
//

import UIKit

class RegistrationViewController: UIViewController {
    
    @IBOutlet weak var userInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    @IBOutlet weak var firstNameInput: UITextField!
    @IBOutlet weak var lastNameInput: UITextField!
    @IBOutlet weak var emailInput: UITextField!
    @IBOutlet weak var cardNumberInput: UITextField!
    @IBOutlet weak var genderInput: UITextField!
    
    let requestFactory = RequestFactory()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.signUp()
    }
    
    func signUp() {
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
        auth.signUp(userData: user) { response in
            switch response.result {
            case .success(let signUp):
                print(signUp)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
