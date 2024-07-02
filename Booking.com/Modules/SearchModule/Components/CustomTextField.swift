//
//  CustomTextField.swift
//  Booking.com
//
//  Created by Алибек Аблайулы on 16.06.2024.
//

import UIKit

class CustomTextField {
    private var placeholder: String?
    private var leftIcon: UIImage?
    
    private var leftView: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 24 + 16 + 8, height: 24))
        return view
    }()
    
    func setPlaceholder(placeholder: String) -> Self {
        self.placeholder = placeholder
        return self
    }
    
    func setLeftIcon(icon: UIImage?) -> Self {
        self.leftIcon = icon
        return self
    }
    
    func build() -> UITextField {
        let imageView = UIImageView(frame: CGRect(x: leftView.frame.size.width - 24 - 8, y: 0, width: 24, height: leftView.frame.size.height))
        imageView.image = leftIcon
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .black
        
        leftView.addSubview(imageView)
        
        let textField = UITextField()
        textField.attributedPlaceholder = NSAttributedString(string: placeholder ?? "", attributes: [.foregroundColor: UIColor.black])
        
        textField.backgroundColor = .white
        textField.leftViewMode = .always
        textField.leftView = leftView
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.heightAnchor.constraint(equalToConstant: 56).isActive = true
        
        return textField
    }
    
}
