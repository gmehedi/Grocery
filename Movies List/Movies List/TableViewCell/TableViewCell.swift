//
//  TableViewCell.swift
//  Movies List
//
//  Created by A on 02/02/2020.
//  Copyright © 2020 MatrixTeam. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    static let id = "TableViewCell"
    
    @IBOutlet weak var serialNumberLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
