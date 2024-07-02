//
//  BannerContainerCell.swift
//  Booking.com
//
//  Created by Алибек Аблайулы on 16.06.2024.
//

import UIKit

class BannerContainerCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
//        self.backgroundColor = .white
        self.contentView.layer.cornerRadius = 8
        self.contentView.backgroundColor = .white
        
        self.contentView.layer.shadowColor = AppColors.lightGray.cgColor
        self.contentView.layer.shadowOpacity = 1
        self.contentView.layer.shadowOffset = .zero
        self.contentView.layer.shadowRadius = 4
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
