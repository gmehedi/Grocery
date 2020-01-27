//
//  CollectionViewCell.swift
//  Grocery
//
//  Created by A on 04/01/2020.
//  Copyright © 2020 ecomarce. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    static let id = "CollectionViewCell"
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var quantityLabel: UILabel!
  //  @IBOutlet weak var nameLabel: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
