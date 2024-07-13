//
//  AuthCoordinator.swift
//  Booking.com
//
//  Created by Алибек Аблайулы on 15.06.2024.
//

import UIKit

class AuthCoordinator: AuthCoordinatorProtocol {
    var navigationController: UINavigationController
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        
        let navigationBarAppereance = UINavigationBarAppearance()
        navigationBarAppereance.backgroundColor = AppColors.primaryColor
        navigationBarAppereance.titleTextAttributes = [
            .foregroundColor: UIColor.white,
            .font: FontTypes.bold.getFont(size: 19)!
        ]
        self.navigationController.navigationBar.standardAppearance = navigationBarAppereance
        self.navigationController.navigationBar.scrollEdgeAppearance = navigationBarAppereance
    }
    
    func start() {
        self.startLoginScreen()
    }
    
    func startLoginScreen() {
        let loginViewController = AuthFactory.shared.createLoginScreen()
        navigationController.setViewControllers([loginViewController], animated: true)
    }
    
    func startRegisterScreen() {
        
    }
 
}
