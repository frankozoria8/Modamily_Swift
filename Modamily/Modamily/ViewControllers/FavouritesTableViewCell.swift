//
//  FavouritesTableViewCell.swift
//  Modamily
//
//  Created by iMac Pro on 7/18/18.
//  Copyright © 2018 iMac Pro. All rights reserved.
//

import UIKit

class FavouritesTableViewCell: UITableViewCell {

    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var lblFullname: UILabel!
    @IBOutlet weak var imgDetailIcon: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
