//
//  CoordinatorFactoryProtocol.swift
//  Booking.com
//
//  Created by Алибек Аблайулы on 15.06.2024.
//

import UIKit

protocol CoordinatorFactoryProtocol {
    func createAuthCoordinator(
        navigationController: UINavigationController
    ) -> AuthCoordinatorProtocol
    func createAppCoordinator(
        navigationController: UINavigationController
    ) -> AppCoordinatorProtocol
}
