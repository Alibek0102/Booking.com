//
//  HomeScreensFactoryProtocol.swift
//  Booking.com
//
//  Created by Алибек Аблайулы on 15.06.2024.
//

import UIKit

protocol HomeScreensFactoryProtocol {
    func createSearchScreen() -> SearchViewController
    func createFavoriteScreen() -> FavoriteViewController
    func createBookingsScreen() -> BookingsViewController
    func createProfileScreen() -> ProfileViewControlller
}
