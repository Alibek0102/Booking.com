//
//  AuthFactory.swift
//  Booking.com
//
//  Created by Алибек Аблайулы on 15.06.2024.
//

import UIKit

class AuthFactory  {
    static let shared = AuthFactory()
    
    private init() {}
}

extension AuthFactory: AuthFactoryProtocol {
    func createLoginScreen() -> LoginViewController {
        let viewController = LoginViewController()
        return viewController
    }
    
}
