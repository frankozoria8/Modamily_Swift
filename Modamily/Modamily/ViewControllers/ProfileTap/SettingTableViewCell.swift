//
//  SettingTableViewCell.swift
//  Modamily
//
//  Created by iMac Pro on 7/17/18.
//  Copyright © 2018 iMac Pro. All rights reserved.
//

import UIKit

class SettingTableViewCell: UITableViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var imgDetailIcon: UIImageView!
    @IBOutlet weak var viewSeparator: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
