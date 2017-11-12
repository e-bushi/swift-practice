//
//  TestCollectionTableViewCell.swift
//  flo
//
//  Created by Chris Mauldin on 10/30/17.
//  Copyright © 2017 Chris Mauldin. All rights reserved.
//

import UIKit

class TestCollectionTableViewCell: UITableViewCell {
    @IBOutlet private weak var collectionView: UICollectionView!
    
    func setCollectionViewDataSourceDelegate
        <D: UICollectionViewDataSource & UICollectionViewDelegate>
        (dataSourceDelegate: D, forRow row: Int) {
        
        collectionView.delegate = dataSourceDelegate
        collectionView.dataSource = dataSourceDelegate
        collectionView.tag = row
        collectionView.reloadData()
    }
    
    var collectionViewOffset: CGFloat {
        get {
            return collectionView.contentOffset.x
        }
        
        set {
            return collectionView.contentOffset.x = newValue
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
