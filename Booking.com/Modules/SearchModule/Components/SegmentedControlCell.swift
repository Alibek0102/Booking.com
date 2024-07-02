//
//  SegmentedControlCell.swift
//  Booking.com
//
//  Created by Алибек Аблайулы on 15.06.2024.
//

import UIKit

class SegmentedControlCell: UICollectionViewCell {
    
    lazy var segmentImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.widthAnchor.constraint(equalToConstant: 24).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 24).isActive = true
        return imageView
    }()
    
    lazy var segmentTitle: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = FontTypes.medium.getFont(size: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.layer.cornerRadius = 20

        setupElements()
    }
    
    private func setupElements() {
        self.addSubview(segmentImage)
        self.addSubview(segmentTitle)
        
        NSLayoutConstraint.activate([
            segmentImage.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            segmentImage.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16),
            
            segmentTitle.leftAnchor.constraint(equalTo: segmentImage.rightAnchor, constant: 8),
            segmentTitle.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            segmentTitle.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16)
        ])
    }
    
    func setSegmentValues(segment: Segment) {
        segmentImage.image = segment.icon
        segmentTitle.text = segment.title
    }
    
    func activeSegment() {
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.white.cgColor
    }
    
    func disactiveSegment() {
        self.layer.borderWidth = 0
        self.layer.borderColor = UIColor.clear.cgColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
