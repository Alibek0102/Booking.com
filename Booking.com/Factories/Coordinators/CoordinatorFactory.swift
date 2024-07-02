//
//  CoordinatorFactory.swift
//  Booking.com
//
//  Created by Алибек Аблайулы on 15.06.2024.
//

import UIKit


class CoordinatorFactory {
    static let shared = CoordinatorFactory()
    
    private init() {}

}

extension CoordinatorFactory: CoordinatorFactoryProtocol {
    func createAuthCoordinator(
        navigationController: UINavigationController
    ) -> AuthCoordinatorProtocol {
        let coordinator = AuthCoordinator(navigationController: navigationController)
        return coordinator
    }
    
    func createAppCoordinator(
        navigationController: UINavigationController
    ) -> AppCoordinatorProtocol {
        let coordinator = AppCoordinator(navigationController: navigationController)
        return coordinator
    }
}
