//
//  AppCoordinator.swift
//  Booking.com
//
//  Created by Алибек Аблайулы on 15.06.2024.
//

import UIKit

class AppCoordinator: NSObject, AppCoordinatorProtocol, UITabBarControllerDelegate {
   
    var navigationController: UINavigationController
    var tabBarController: UITabBarController
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        tabBarController = .init()
    }
    
    func start() {
        let pages: [TabBarPages] = [.search, .favorite, .booking, .profile]
            .sorted(by: { $0.pageOrderNumber() < $1.pageOrderNumber()})
        
        let controllers = pages.map({ getTabController($0) })
        
        self.prepareTabBarController(withViewControllers: controllers)
        
    }
    
    func prepareTabBarController(withViewControllers viewControllers: [UIViewController]) {
        
        self.tabBarController.delegate = self
        self.tabBarController.viewControllers = viewControllers
        self.tabBarController.tabBar.isTranslucent = false
        self.tabBarController.selectedIndex = 0
        self.tabBarController.tabBar.backgroundColor = .white
        
        self.navigationController.setViewControllers([self.tabBarController], animated: true)
    }
    
    func getTabController(_ page: TabBarPages) -> UINavigationController {
        let navController = UINavigationController()
        navController.title = page.getTabBarItemTitle()
        navController.tabBarItem.image = page.getTabBarIcon()
        navController.navigationBar.backgroundColor = AppColors.primaryColor
        navController.navigationBar.scrollEdgeAppearance = createNavBarAppereance()
        navController.navigationBar.standardAppearance = createNavBarAppereance()
        
        switch page {
        case .search:
            let searchViewController = HomeScreensFactory.shared.createSearchScreen()
            searchViewController.title = page.getNavigationTitle()
            navController.setViewControllers([searchViewController], animated: true)
        case .favorite:
            let favoriteViewController = HomeScreensFactory.shared.createFavoriteScreen()
            favoriteViewController.title = page.getNavigationTitle()
            navController.setViewControllers([favoriteViewController], animated: true)
        case .booking:
            let bookingViewController = HomeScreensFactory.shared.createBookingsScreen()
            bookingViewController.title = page.getNavigationTitle()
            navController.setViewControllers([bookingViewController], animated: true)
        case .profile:
            let profileViewController = HomeScreensFactory.shared.createProfileScreen()
            profileViewController.title = page.getNavigationTitle()
            navController.setViewControllers([profileViewController], animated: true)
            
        }
        
        return navController
    }
    
    private func createNavBarAppereance() -> UINavigationBarAppearance {
        let navBarAppereance = UINavigationBarAppearance()
        navBarAppereance.backgroundColor = AppColors.primaryColor
        navBarAppereance.titleTextAttributes = [
            .foregroundColor: UIColor.white,
            .font: FontTypes.bold.getFont(size: 19)
        ]
        return navBarAppereance
    }
    
}
