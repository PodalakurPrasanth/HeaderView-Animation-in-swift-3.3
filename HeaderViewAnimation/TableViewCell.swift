//
//  TableViewCell.swift
//  HeaderViewAnimation
//
//  Created by prasanth.podalakur on 7/24/17.
//  Copyright © 2017 Kelltontech. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
