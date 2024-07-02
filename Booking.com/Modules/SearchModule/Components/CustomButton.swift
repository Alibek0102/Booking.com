//
//  CustomButton.swift
//  Booking.com
//
//  Created by Алибек Аблайулы on 16.06.2024.
//

import UIKit


class CustomButton {
    private var title: String?
    private var color: UIColor?
    
    func setTitle(title: String) -> Self {
        self.title = title
        return self
    }
    
    func setColor(color: UIColor) -> Self {
        self.color = color
        return self
    }
    
    func build() -> UIButton {
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = FontTypes.bold.getFont(size: 16)
        button.backgroundColor = self.color
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 4
        button.heightAnchor.constraint(equalToConstant: 56).isActive = true
        return button
    }
    
}
