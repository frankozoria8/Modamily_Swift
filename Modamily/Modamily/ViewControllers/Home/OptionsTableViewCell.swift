//
//  OptionsTableViewCell.swift
//  Modamily
//
//  Created by iMac Pro on 7/19/18.
//  Copyright © 2018 iMac Pro. All rights reserved.
//

import UIKit

class OptionsTableViewCell: UITableViewCell {

    @IBOutlet weak var lblOptionTitle: UILabel!
    @IBOutlet weak var imageCheck: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
