//
//  TableViewContent.swift
//  Booking.com
//
//  Created by Алибек Аблайулы on 16.06.2024.
//

import Foundation

enum TableViewContent {
    case ticketSearch
    case banners
    
    func getIndex() -> Int {
        switch self {
        case .ticketSearch:
            return 0
        case .banners:
            return 1
        }
    }
}
