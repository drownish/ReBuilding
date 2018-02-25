//
//  TableViewCell.swift
//  ReBuilding
//
//  Created by Максим Балахонов on 04/02/2018.
//  Copyright © 2018 Максим Балахонов. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBOutlet weak var titleCell: UILabel!
    
    @IBOutlet weak var displayCell: UILabel!
   
    @IBOutlet weak var goButton: UIButton!
}
