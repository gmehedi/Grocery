//
//  TableViewCell.swift
//  Grocery
//
//  Created by A on 26/12/2019.
//  Copyright © 2019 ecomarce. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    static let id = "TableViewCell"
    
    @IBOutlet weak var cetagoryLabel: UILabel!
    @IBOutlet weak var itemLabel: UILabel!
    @IBOutlet weak var imgView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
