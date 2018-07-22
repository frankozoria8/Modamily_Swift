//
//  InAppHelpViewController.swift
//  Modamily
//
//  Created by iMac Pro on 7/20/18.
//  Copyright © 2018 iMac Pro. All rights reserved.
//

import UIKit

class InAppHelpViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.setupViews()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.tabBarController?.tabBar.isHidden = false
        self.hidesBottomBarWhenPushed = false
        
    }

    func setupViews(){
        
        self.navigationItem.title = "Premium feature"
        self.navigationController?.navigationBar.titleTextAttributes =
            [NSAttributedStringKey.foregroundColor: UIColor.darkGray,
             NSAttributedStringKey.font: UIFont(name: FontName.k_FontName_BodoniBold, size: 25)!]
        
        let button = UIButton.init(type: .custom)
        button.setImage(UIImage.init(named: ""), for: UIControlState.normal)
        button.frame = CGRect.init(x: 0, y: 0, width: 30, height: 44)
        let barButton = UIBarButtonItem.init(customView: button)
        self.navigationItem.leftBarButtonItem = barButton
    }
    
    @IBAction func upgradeToPremiumAction(_ sender: Any) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SubscriptionViewController") as! SubscriptionViewController
        self.navigationController?.pushViewController(vc, animated: true)
        self.hidesBottomBarWhenPushed = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
