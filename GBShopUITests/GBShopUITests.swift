//
//  GBShopUITests.swift
//  GBShopUITests
//
//  Created by Alexander Novikov on 24.06.2021.
//

import XCTest

class GBShopUITests: XCTestCase {

    var app: XCUIApplication!
    var scrollViewsQuery: XCUIElementQuery!

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        
        app = XCUIApplication()
        app.launch()
        scrollViewsQuery = app.scrollViews
    }
    
    func testSuccess() {
        enterAuthData(login: "admin", password: "123456")

        let resultLabel = scrollViewsQuery.staticTexts["Данные верны"]
        XCTAssertNotNil(resultLabel)
    }
    
    func testFail() {
        enterAuthData(login: "user", password: "password")
        
        let resultLabel = scrollViewsQuery.staticTexts["Ошибка входа"]
        XCTAssertNotNil(resultLabel)
    }
    
    private func enterAuthData(login: String, password: String) {
        let loginTextField = scrollViewsQuery.children(matching: .textField).element(boundBy: 0)
        loginTextField.tap()
        loginTextField.typeText(login)
        
        let passwordTextField = scrollViewsQuery.children(matching: .textField).element(boundBy: 1)
        passwordTextField.tap()
        passwordTextField.typeText(password)

        let button = scrollViewsQuery.buttons["Войти"]
        button.tap()
    }
}

