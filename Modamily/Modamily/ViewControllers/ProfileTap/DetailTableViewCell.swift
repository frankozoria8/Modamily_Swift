//
//  DetailTableViewCell.swift
//  Modamily
//
//  Created by iMac Pro on 7/18/18.
//  Copyright © 2018 iMac Pro. All rights reserved.
//

import UIKit

class DetailTableViewCell: UITableViewCell {

    @IBOutlet weak var lblTitle: UILabel!    
    @IBOutlet weak var lblDetail: UILabel!
    @IBOutlet weak var btnAccessory: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
