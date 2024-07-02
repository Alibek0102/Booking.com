//
//  FontTypes.swift
//  Booking.com
//
//  Created by Алибек Аблайулы on 15.06.2024.
//

import UIKit

enum FontTypes {
    case regular
    case medium
    case bold
    
    func getFont(size: CGFloat) -> UIFont? {
        switch self {
        case .regular:
            return UIFont(name: "Roboto-Regular", size: size)
        case .medium:
            return UIFont(name: "Roboto-Medium", size: size)
        case .bold:
            return UIFont(name: "Roboto-Bold", size: size)
        }
    }
}
