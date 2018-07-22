//
//  SettingViewController.swift
//  Modamily
//
//  Created by iMac Pro on 7/17/18.
//  Copyright © 2018 iMac Pro. All rights reserved.
//

import UIKit
import EggRating

class SettingViewController: BaseViewController {

    @IBOutlet weak var tblSettings: UITableView!
    
    var titleArray = ["Account", "Notifications", "Learn more about Modamily", "Invite people to Modamily", "Rate Modamily", "Privacy policy", "Terms of service", "Log Out"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.setupViews()
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
    }
    
    func setupViews(){
        
        self.addNavBarImage()
        self.addLeftItemImage()
        
        let button = UIButton.init(type: .custom)
        button.setImage(UIImage.init(named: ""), for: UIControlState.normal)
        button.frame = CGRect.init(x: 0, y: 0, width: 30, height: 44)
        let barButton = UIBarButtonItem.init(customView: button)
        self.navigationItem.rightBarButtonItem = barButton
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension SettingViewController: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingTableViewCell", for: indexPath) as! SettingTableViewCell
        cell.lblTitle.text = self.titleArray[indexPath.row]
       
        switch indexPath.row {
        case 4:
            cell.imgDetailIcon?.image = nil
        case 7:
            cell.imgDetailIcon?.image =  nil
            cell.viewSeparator.isHidden = true
        default:
            cell.imgDetailIcon.image = #imageLiteral(resourceName: "right_arrow")
        }
                
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        
        switch indexPath.row {
        case 0:
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "AccountViewController") as! AccountViewController
            self.navigationController?.pushViewController(vc, animated: true)
        case 1:
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "DetailSettingsViewController") as! DetailSettingsViewController
            self.navigationController?.pushViewController(vc, animated: true)
        case 3:
            
            // text to share
            let text = "Check out Modamily, it's a match-making site for people ready to have kids and start a family. Thought you might like it! apps:itunes.com/app/Modamily"
            let image = UIImage(named: "boyShare")
            
            // set up activity view controller
            let activityViewController = UIActivityViewController(activityItems: [text, image!], applicationActivities: nil)
            activityViewController.popoverPresentationController?.sourceView = self.view // so that iPads won't crash
            
            activityViewController.completionWithItemsHandler = {(activityType: UIActivityType?, completed: Bool, returnedItems: [Any]?, error: Error?) in
                self.addNavBarImage()
            }

            // exclude some activity types from the list (optional)
//            activityViewController.excludedActivityTypes = [ UIActivityType.airDrop, UIActivityType.postToFacebook ]
            
            // present the view controller
            self.present(activityViewController, animated: true) {
                self.addNavBarEmptyImage()
            }
        case 4:
            print("Rating")
            EggRating.appStoreDismissButtonTitleText = "Reminder later"
            EggRating.appStoreRateButtonTitleText = "Rate Now"
            EggRating.debugMode = false
            EggRating.delegate = self
            
            EggRating.promptRateUsIfNeeded(in: self)
            
            EggRating.promptRateUs(in: self)
        case 7:
            print("Logout")
        default:
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "WebViewController") as! WebViewController
            
            vc.webType = indexPath.row
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
        
        
    }
}
extension SettingViewController: EggRatingDelegate {
    func didDissmissThankYouDialog() {
        print("didDissmiss ThankYouDialog")
    }
    
    
    func didRate(rating: Double) {
        print("didRate: \(rating)")
        //        setupView()
    }
    
    func didRateOnAppStore() {
        print("didRateOnAppStore")
    }
    
    func didIgnoreToRate() {
        print("didIgnoreToRate")
    }
    
    func didIgnoreToRateOnAppStore() {
        print("didIgnoreToRateOnAppStore")
    }
}
