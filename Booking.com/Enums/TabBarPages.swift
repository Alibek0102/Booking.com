//
//  TabBarPages.swift
//  Booking.com
//
//  Created by Алибек Аблайулы on 15.06.2024.
//

import UIKit

enum TabBarPages {
    case search
    case favorite
    case booking
    case profile
    
    func pageOrderNumber() -> Int {
        switch self {
        case .search:
            return 0
        case .favorite:
            return 1
        case .booking:
            return 2
        case .profile:
            return 3
        }
    }
    
    func getNavigationTitle() -> String {
        switch self {
            
        case .search:
            return "Booking.com"
        case .favorite:
            return "Saved"
        case .booking:
            return "Trips"
        case .profile:
            return "Profile"
        }
    }
    
    func getTabBarItemTitle() -> String{
        switch self {
            
        case .search:
            return "Search"
        case .favorite:
            return "Saved"
        case .booking:
            return "Booking"
        case .profile:
            return "Profile"
        }
    }
    
    func getTabBarIcon() -> UIImage {
        switch self {
            
        case .search:
            return .searchInactive
        case .favorite:
            return .favoriteInactive
        case .booking:
            return .bookingInactive
        case .profile:
            return .profileInactive
        }
    }
}
