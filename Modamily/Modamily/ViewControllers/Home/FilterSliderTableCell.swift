//
//  FilterSliderTableCell.swift
//  Modamily
//
//  Created by iMac Pro on 7/19/18.
//  Copyright © 2018 iMac Pro. All rights reserved.
//

import UIKit
import RangeSeekSlider

class FilterSliderTableCell: UITableViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var slider: RangeSeekSlider!
    
    @IBOutlet weak var lblSliderValue: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.slider.delegate = self
        
    }
    func Configuration(){
        switch self.slider.tag {
        case 6:
            self.slider.minValue = 0
            self.slider.maxValue = 100
            self.slider.selectedMinValue = 0
            self.slider.selectedMaxValue = 100
            self.slider.minDistance = 10
            self.slider.maxDistance = 100
        case 7:
            self.slider.minValue = 145
            self.slider.maxValue = 213
            self.slider.selectedMinValue = 145
            self.slider.selectedMaxValue = 213
            self.slider.minDistance = 5
            self.slider.maxDistance = 68
        case 8:
            self.slider.minValue = 0
            self.slider.maxValue = 1000
            self.slider.selectedMinValue = 0
            self.slider.selectedMaxValue = 1000
            self.slider.minDistance = 10
            self.slider.maxDistance = 1000
        default:
            break
        }
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension FilterSliderTableCell: RangeSeekSliderDelegate{
    func rangeSeekSlider(_ slider: RangeSeekSlider, didChange minValue: CGFloat, maxValue: CGFloat) {
        
        switch slider.tag {
        case 6:
            self.lblSliderValue.text = String(format: "%d%@%d", Int(minValue), " - ", Int(maxValue))
        case 7:
            
            var htInFtMin = Int(minValue * 0.0328084);
            var htInFtMax = Int(maxValue * 0.0328084);
            
            var htInInMin = Int(ceilf((Float((minValue * 0.0328084 - CGFloat(htInFtMin))*12))));
            var htInInMax = Int(ceilf((Float((maxValue * 0.0328084 - CGFloat(htInFtMax))*12))));
            
            if (htInInMin == 12) {
                htInFtMin = htInFtMin + 1
                htInInMin = 0
            }
            if (htInInMax == 12) {
                htInFtMax = htInFtMax + 1
                htInInMax = 0
            }

            self.lblSliderValue.text = String(format: "%d%@%d%@%d%@%d%@%d%@%d%@", htInFtMin, "'", htInInMin, " (", Int(minValue), " cm) - " , htInFtMax, "'", htInInMax, " (", Int(maxValue)," cm)")
            
        case 8:
            self.lblSliderValue.text = String(format: "%@%d%@%@%d%@", "$", Int(minValue), "K", " - $", Int(maxValue), "K")
        default:
            break
        }
        
        
    }
//    func rangeSeekSlider(_ slider: RangeSeekSlider, stringForMaxValue maxValue: CGFloat) -> String? {
//
//    }
//    func rangeSeekSlider(_ slider: RangeSeekSlider, stringForMinValue minValue: CGFloat) -> String? {
//
//    }
}
