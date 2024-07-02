//
//  SearchViewController.swift
//  Booking.com
//
//  Created by Алибек Аблайулы on 15.06.2024.
//

import UIKit

class SearchViewController: UIViewController {
    
    let segmentsCollectionViewId = "segmentsCollectionViewId"
    let ticketSearchCellId = "TicketSearchCellId"
    let bannerCellId = "BannerCellId"
    
    let segments: [Segment] = [
        Segment(title: "Stays", icon: .stays),
        Segment(title: "Flights", icon: .flights),
        Segment(title: "Car Rental", icon: .carRental),
        Segment(title: "Taxi", icon: .taxi),
        Segment(title: "Attractions", icon: .attractions)
    ]
    
    let content: [TableViewContent] = [.ticketSearch, .banners]
    
    let bannerContent: [Banner] = [
        Banner(title: "Sign in, save money", text: "Save 10% or more at participating properties with a free Booking.com membership", image:"https://firebasestorage.googleapis.com/v0/b/booking-clone-48a47.appspot.com/o/img.png?alt=media&token=b1d1757b-0e17-4dcf-ab4e-4e3a708a5369")
    ]
    
    lazy var segmentsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.estimatedItemSize = CGSize(width: 120, height: 40)
        layout.headerReferenceSize = CGSize(width: 8, height: 0)
        layout.footerReferenceSize = CGSize(width: 8, height: 0)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = AppColors.primaryColor
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.layer.borderColor = AppColors.primaryColor.cgColor
        collectionView.layer.borderWidth = 1
        return collectionView
    }()
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.separatorStyle = .none
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        self.segmentsCollectionView.dataSource = self
        self.segmentsCollectionView.delegate = self
        
        
        self.segmentsCollectionView.register(SegmentedControlCell.self, forCellWithReuseIdentifier: segmentsCollectionViewId)
        self.tableView.register(TicketSearchCell.self, forCellReuseIdentifier: ticketSearchCellId)
        self.tableView.register(BannerCell.self, forCellReuseIdentifier: bannerCellId)
        
        self.setupCollectionView()
        self.setupTableView()
    }
    
    private func setupCollectionView() {
        view.addSubview(segmentsCollectionView)
        
        NSLayoutConstraint.activate([
            self.segmentsCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            self.segmentsCollectionView.rightAnchor.constraint(equalTo: view.rightAnchor),
            self.segmentsCollectionView.leftAnchor.constraint(equalTo: view.leftAnchor),
            self.segmentsCollectionView.heightAnchor.constraint(equalToConstant: 56)
        ])
    }
    
    
    private func setupTableView() {
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            self.tableView.topAnchor.constraint(equalTo: segmentsCollectionView.bottomAnchor),
            self.tableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            self.tableView.rightAnchor.constraint(equalTo: view.rightAnchor),
            self.tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
}

extension SearchViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return segments.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = segmentsCollectionView.dequeueReusableCell(withReuseIdentifier: segmentsCollectionViewId, for: indexPath) as? SegmentedControlCell {
            let index = indexPath.item
            let value = segments[index]
            cell.setSegmentValues(segment: value)
            
            if(index == 0){
                cell.activeSegment()
            }
            
            return cell
        }
        
        return UICollectionViewCell()
    }
    
}

extension SearchViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return content.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let value = content[indexPath.item]
        
        switch value {
        case .ticketSearch:
            if let cell = tableView.dequeueReusableCell(withIdentifier: ticketSearchCellId, for: indexPath) as? TicketSearchCell {
                return cell
            }
        case .banners:
            if let cell = tableView.dequeueReusableCell(withIdentifier: bannerCellId, for: indexPath) as? BannerCell {
                return cell
            }
        default:
            return UITableViewCell()
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
}
