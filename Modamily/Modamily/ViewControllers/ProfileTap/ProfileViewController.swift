//
//  ProfileViewController.swift
//  Modamily
//
//  Created by iMac Pro on 7/16/18.
//  Copyright © 2018 iMac Pro. All rights reserved.
//

import UIKit

class ProfileViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setupViews()
        
    }

    func setupViews(){
        
        for item in (self.tabBarController?.tabBar.items)!{
            if item.tag == 3{
                item.image = item.image?.withRenderingMode(.alwaysOriginal)
            }
        }
        
        self.addNavBarImage()
        
        let emptybutton = UIButton.init(type: .custom)
        emptybutton.setImage(UIImage.init(named: ""), for: UIControlState.normal)
        emptybutton.frame = CGRect.init(x: 0, y: 0, width: 30, height: 44)
        let barLeftButton = UIBarButtonItem.init(customView: emptybutton)
        self.navigationItem.leftBarButtonItem = barLeftButton
        
        let button = UIButton.init(type: .custom)
        button.setImage(#imageLiteral(resourceName: "settings_icon"), for: UIControlState.normal)
        button.frame = CGRect.init(x: 0, y: 0, width: 30, height: 44)
        button.addTarget(self, action: #selector(self.openSettingPage), for: .touchUpInside)
        let barButton = UIBarButtonItem.init(customView: button)
        self.navigationItem.rightBarButtonItem = barButton
        
    }
    
    @objc func openSettingPage(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SettingViewController") as! SettingViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
