//
//  LoginViewController.swift
//  Booking.com
//
//  Created by Алибек Аблайулы on 15.06.2024.
//

import UIKit

class LoginViewController: UIViewController {
    
    let emailDescriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Enter your email address"
        label.font = FontTypes.bold.getFont(size: 32)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        self.setupElement()
    }
    
    private func setupElement() {
        view.addSubview(emailDescriptionLabel)
        
        NSLayoutConstraint.activate([
            emailDescriptionLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            emailDescriptionLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            emailDescriptionLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16),
        ])
    }
}
