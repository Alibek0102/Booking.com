//
//  MainCoordinator.swift
//  Booking.com
//
//  Created by Алибек Аблайулы on 15.06.2024.
//

import UIKit

class MainCoordinator: MainCoordinatorProtocol {
    
    var navigationController: UINavigationController
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        // remove after splash check
        self.startAuthFlow()
//        self.startAppFlow()
    }
    
    func startAuthFlow() {
        let authCoordinator = CoordinatorFactory.shared.createAuthCoordinator(navigationController: navigationController)
        authCoordinator.start()
    }
    
    func startAppFlow() {
        let appCoordinator = CoordinatorFactory.shared.createAppCoordinator(navigationController: navigationController)
        navigationController.setNavigationBarHidden(true, animated: false)
        appCoordinator.start()
    }
    
}
