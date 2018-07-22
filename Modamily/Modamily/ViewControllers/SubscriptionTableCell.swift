//
//  SubscriptionTableCell.swift
//  Modamily
//
//  Created by iMac Pro on 7/20/18.
//  Copyright © 2018 iMac Pro. All rights reserved.
//

import UIKit

class SubscriptionTableCell: UITableViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    
    @IBOutlet weak var lblUnit: UILabel!
    @IBOutlet weak var imgCheck: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
