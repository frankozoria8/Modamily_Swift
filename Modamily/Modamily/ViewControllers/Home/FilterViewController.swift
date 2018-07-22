//
//  FilterViewController.swift
//  Modamily
//
//  Created by iMac Pro on 7/17/18.
//  Copyright © 2018 iMac Pro. All rights reserved.
//

import UIKit

class FilterViewController: BaseViewController {

    
    @IBOutlet weak var tblFilter: UITableView!
    
    @IBOutlet weak var tblOptions: UITableView!
    @IBOutlet weak var btnBackground: UIButton!
    @IBOutlet weak var btnOptionDone: UIButton!
    
    @IBOutlet weak var constraintOptionTblH: NSLayoutConstraint!
    @IBOutlet weak var btnResetFilter: UIButton!
    
    var detailArray = FilterData.DETAILARRAY
    
    var keysArray = FilterData.KEY_Array
    
    var lookingForArray = FilterData.LookingForArray
    
    var totalDataArray = FilterData.TotalArray
    
    var countryCodeArray = FilterData.CountryCodesArray
    var sortedCountryArray = FilterData.SortedCountryArray
    
    var filtersDict = [
                        "gender" : "",
                        "country" : "",
                        "looking_for" : "",
                        "distance" : "",
                        "orientation" : "",
                        "race" : "",
                        "ethnicity" : "",
                        "sign" : "",
                        "religion" : "",
                        "education" : "",
                        "age" : "",
                        "height" : "",
                        "income" : "",
                        "contact_options" : "",
                        "relationship" : "",
                        "have_photo" : "",
                        "lastlogin" : "",
                        "body_type" : "",
                        "diet" : "",
                        "drinks" : "",
                        "drugs" : "",
                        "smoke" : "",
                        "fertilization" : "",
                        "blood_type" : "",
                        "hair" : "",
                        "eye_color" : "",
                        "health_screening_test" : "",
                        "speaks" : "",
                        "travel_distance" : "",
                        "zipcode" : ""
                        ]
    
    var originalTableOffset = CGFloat()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       
        self.setupViews()
        
        print(detailArray)
       let _ = detailArray[1][1]
    }
    
    func setupViews(){
        
        self.addNavBarImage()
        
        let but = UIButton.init(type: .custom)
        but.setImage(UIImage.init(named: ""), for: UIControlState.normal)
        but.frame = CGRect.init(x: 0, y: 0, width: 30, height: 44)
        let lbarButton = UIBarButtonItem.init(customView: but)
        self.navigationItem.leftBarButtonItem = lbarButton
        
        let button = UIButton.init(type: .custom)
        button.setTitle("Done", for: .normal)
        button.titleLabel?.font = UIFont(name: FontName.k_FontName_SFProDisplayBold, size: 20)
        button.setTitleColor(Colors.appColor, for: .normal)
        button.addTarget(self, action: #selector(self.btnDoneAction(sender:)), for: .touchUpInside)
        button.frame = CGRect.init(x: 0, y: 0, width: 30, height: 44)
        let barButton = UIBarButtonItem.init(customView: button)
        self.navigationItem.rightBarButtonItem = barButton
        
        self.btnBackground.isHidden = true
        self.btnBackground.addTarget(self, action: #selector(self.optionTableDone(_:)), for: .touchUpInside)
        self.constraintOptionTblH.constant = 0
        
        self.originalTableOffset = 0
    }
    
    @IBAction func optionTableDone(_ sender: Any) {
        
        self.tblFilter.setContentOffset(CGPoint(x: 0, y: self.originalTableOffset), animated: true)
        
        UIView.animate(withDuration: 0.7) {
            if self.constraintOptionTblH.constant == 0{
                self.constraintOptionTblH.constant = 200
                self.btnBackground.isHidden = false
                DispatchQueue.main.async {
                    self.tblOptions.reloadData()
                }
            }else{
                self.constraintOptionTblH.constant = 0
                self.btnBackground.isHidden = true
            }
        }
        
    }
    
    @objc func btnDoneAction(sender: UIButton){
        
        self.constraintOptionTblH.constant = 0
        self.goBack(sender)
        
    }
    @IBAction func btnResetFilterAction(_ sender: Any) {
        
        self.tblFilter.setContentOffset(CGPoint.zero, animated: true)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
extension FilterViewController: UITableViewDataSource, UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        if tableView == self.tblFilter{
            return 2
        }else{
            return 1
        }
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableCell(withIdentifier: "FilterHeaderViewCell") as! FilterHeaderViewCell
        if section == 0 {
            header.lblTitle.text = "Searching For"
        }else{
            header.lblTitle.text = "Advanced Search"
        }
        return header
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if tableView == self.tblFilter{
            return 65
        }else{
            return 0
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == self.tblFilter{
            if section == 0{
                return 3
            }else{
                return self.detailArray[1].count
            }
        }else{
            return 10
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == self.tblFilter{
            var cell0 = UITableViewCell()
            
            if indexPath.section == 0{
                
                let cell = tableView.dequeueReusableCell(withIdentifier: "FilterTableViewCell", for: indexPath) as! FilterTableViewCell
                cell.lblTitle.text = self.detailArray[indexPath.section][indexPath.row]
                cell.btnAccessory.tag = indexPath.row
                cell.btnAccessory.addTarget(self, action: #selector(self.btnAccessoryAction(_:)), for: .touchUpInside)
                if indexPath.row == 1{
                    cell.btnAccessory.setImage(#imageLiteral(resourceName: "Locator"), for: .normal)
                }else{
                    cell.btnAccessory.setImage(#imageLiteral(resourceName: "Edit"), for: .normal)
                }
                cell0 = cell
            }else{
                
                if indexPath.row == 6 || indexPath.row == 7 || indexPath.row == 8 {
                    let cell = tableView.dequeueReusableCell(withIdentifier: "FilterSliderTableCell", for: indexPath) as! FilterSliderTableCell
                    cell.lblTitle.text = self.detailArray[indexPath.section][indexPath.row]
                    cell.slider.tag = indexPath.row
                    cell.Configuration()
                    
                    cell0 = cell
                }else{
                    let cell = tableView.dequeueReusableCell(withIdentifier: "FilterTableViewCell", for: indexPath) as! FilterTableViewCell
                    cell.lblTitle.text = self.detailArray[indexPath.section][indexPath.row]
                    cell.btnAccessory.setImage(#imageLiteral(resourceName: "Edit"), for: .normal)
                    cell.btnAccessory.tag = indexPath.row
                    cell.btnAccessory.addTarget(self, action: #selector(self.btnEditAction(_:)), for: .touchUpInside)
                    
                    cell0 = cell
                }
               
            }
            
            return cell0
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "OptionsTableViewCell", for: indexPath) as! OptionsTableViewCell
            return cell
        }
    }
    // Search For section Edit button
    @objc func btnAccessoryAction(_ sender: UIButton){
        
        self.originalTableOffset = self.tblFilter.contentOffset.y
        
        let rect = self.tblFilter.rectForRow(at: IndexPath(item: sender.tag, section: 0))
        let rectInScreen = self.tblFilter.convert(rect, to: self.tblFilter.superview)
        let difference = self.tblFilter.bounds.size.height - 200.0 - rectInScreen.origin.y
        if difference < 0{
            DispatchQueue.main.async {
                self.tblFilter.setContentOffset(CGPoint(x: 0, y: self.tblFilter.contentOffset.y - difference + 50), animated: true)}
        }
        
        
        if sender.tag == 1{
            // detect User location
        }else{
            self.btnOptionDone.sendActions(for: .touchUpInside)
        }
        
        

    }
    // Advanced Search section Edit button
    @objc func btnEditAction(_ sender: UIButton){
        
        self.originalTableOffset = self.tblFilter.contentOffset.y
        
        let rect = self.tblFilter.rectForRow(at: IndexPath(item: sender.tag, section: 1))
        let rectInScreen = self.tblFilter.convert(rect, to: self.tblFilter.superview)
        let difference = self.tblFilter.bounds.size.height - 200.0 - rectInScreen.origin.y
        if difference < 0{
            DispatchQueue.main.async {
                self.tblFilter.setContentOffset(CGPoint(x: 0, y: self.tblFilter.contentOffset.y - difference + 50), animated: true)}
        }
        
        self.btnOptionDone.sendActions(for: .touchUpInside)
        
        

    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if tableView == self.tblFilter{
            return 60
        }else{
            return 35
        }
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
    }
}
