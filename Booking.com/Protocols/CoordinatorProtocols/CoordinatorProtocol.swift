//
//  CoordinatorProtocol.swift
//  Booking.com
//
//  Created by Алибек Аблайулы on 15.06.2024.
//

import UIKit

protocol CoordinatorProtocol {
    var navigationController: UINavigationController { get set }
    
    init(navigationController: UINavigationController)
    
    func start()
}
