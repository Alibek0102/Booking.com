//
//  TicketSearchCell.swift
//  Booking.com
//
//  Created by Алибек Аблайулы on 16.06.2024.
//

import UIKit

class TicketSearchCell: UITableViewCell {
    
//    lazy var destinationTextField = CustomTextField()
    
    var destinationTextField: UITextField = 
        CustomTextField()
        .setLeftIcon(icon: UIImage(systemName: "magnifyingglass"))
        .setPlaceholder(placeholder: "Enter destination")
        .build()

    var dateTextField: UITextField =
        CustomTextField()
        .setLeftIcon(icon: UIImage(systemName: "calendar"))
        .setPlaceholder(placeholder: "Any dates")
        .build()
    
    var searchButton: UIButton = CustomButton()
        .setTitle(title: "Search")
        .setColor(color: AppColors.secondary)
        .build()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupElements()
    }
    
    private func setupElements() {
        
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.layer.cornerRadius = 4
        stackView.layer.borderWidth = 4
        stackView.layer.borderColor = AppColors.yellow.cgColor
        stackView.spacing = 1
        stackView.backgroundColor = AppColors.lightGray
        
        stackView.addArrangedSubview(destinationTextField)
        stackView.addArrangedSubview(dateTextField)
        stackView.addArrangedSubview(searchButton)
        stackView.clipsToBounds = true
        
        self.contentView.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 16),
            stackView.leftAnchor.constraint(equalTo: self.contentView.leftAnchor, constant: 12),
            stackView.rightAnchor.constraint(equalTo: self.contentView.rightAnchor, constant: -12),
            stackView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -16)
        ])
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
