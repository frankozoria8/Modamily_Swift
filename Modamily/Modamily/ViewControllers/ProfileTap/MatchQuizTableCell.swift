//
//  MatchQuizTableCell.swift
//  Modamily
//
//  Created by iMac Pro on 7/18/18.
//  Copyright © 2018 iMac Pro. All rights reserved.
//

import UIKit

class MatchQuizTableCell: UITableViewCell {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblColor: UILabel!
    @IBOutlet weak var viewStar: CosmosView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
