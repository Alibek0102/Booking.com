//
//  BannerCell.swift
//  Booking.com
//
//  Created by Алибек Аблайулы on 16.06.2024.
//

import UIKit

class BannerCell: UITableViewCell {
    
    let bannersCollectionViewId: String = "bannersCollectionViewId"
    
    var banners: [Banner] = []
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 343, height: 163)
        layout.headerReferenceSize = CGSize(width: 16, height: 0)
        layout.footerReferenceSize = CGSize(width: 16, height: 0)
        layout.minimumLineSpacing = 16
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.heightAnchor.constraint(equalToConstant: 163 + 16).isActive = true
        return collectionView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(BannerContainerCell.self, forCellWithReuseIdentifier: bannersCollectionViewId)
        
        self.setupElements()
    }
    
    private func setupElements() {
        self.contentView.addSubview(collectionView)
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: self.contentView.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
            collectionView.leftAnchor.constraint(equalTo: self.contentView.leftAnchor),
            collectionView.rightAnchor.constraint(equalTo: self.contentView.rightAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension BannerCell: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: bannersCollectionViewId, for: indexPath) as? BannerContainerCell {
            return cell
        }
        
        return UICollectionViewCell()
    }
    
}
