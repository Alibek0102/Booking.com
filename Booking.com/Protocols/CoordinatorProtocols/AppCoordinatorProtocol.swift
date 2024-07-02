//
//  AppCoordinatorProtocol.swift
//  Booking.com
//
//  Created by Алибек Аблайулы on 15.06.2024.
//

import UIKit

protocol AppCoordinatorProtocol: CoordinatorProtocol {
    var tabBarController: UITabBarController { get set }
    
    func prepareTabBarController(withViewControllers viewControllers: [UIViewController])
    
    func getTabController(_ page: TabBarPages) -> UINavigationController
}
