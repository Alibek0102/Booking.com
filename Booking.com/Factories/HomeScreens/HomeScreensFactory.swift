//
//  HomeScreensFactory.swift
//  Booking.com
//
//  Created by Алибек Аблайулы on 15.06.2024.
//

import UIKit

class HomeScreensFactory {
    static let shared = HomeScreensFactory()
    
    private init() {}
}

extension HomeScreensFactory: HomeScreensFactoryProtocol {
    
    func createSearchScreen() -> SearchViewController {
        let viewController = SearchViewController()
        return viewController
    }
    
    func createFavoriteScreen() -> FavoriteViewController {
        let viewController = FavoriteViewController()
        return viewController
    }
    
    func createBookingsScreen() -> BookingsViewController {
        let viewController = BookingsViewController()
        return viewController
    }
    
    func createProfileScreen() -> ProfileViewControlller {
        let viewController = ProfileViewControlller()
        return viewController
    }

}

