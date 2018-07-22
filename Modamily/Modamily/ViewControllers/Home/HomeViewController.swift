//
//  HomeViewController.swift
//  Modamily
//
//  Created by iMac Pro on 7/16/18.
//  Copyright © 2018 iMac Pro. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.setupViews()
        
    }

    func setupViews(){
        
        for item in (self.tabBarController?.tabBar.items)!{
            item.image = item.image?.withRenderingMode(.alwaysOriginal)
        }
        
        self.addNavBarImage()
        
        let emptybutton = UIButton.init(type: .custom)
        emptybutton.setImage(UIImage.init(named: ""), for: UIControlState.normal)
        emptybutton.frame = CGRect.init(x: 0, y: 0, width: 30, height: 44)
        let barLeftButton = UIBarButtonItem.init(customView: emptybutton)
        self.navigationItem.leftBarButtonItem = barLeftButton
        
        let button = UIButton.init(type: .custom)
        button.setImage(#imageLiteral(resourceName: "filter"), for: UIControlState.normal)
        button.frame = CGRect.init(x: 0, y: 0, width: 30, height: 44)
        button.addTarget(self, action: #selector(self.filterAction), for: .touchUpInside)
        let barButton = UIBarButtonItem.init(customView: button)
        self.navigationItem.rightBarButtonItem = barButton
        
    }
    @objc func filterAction(){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "FilterViewController") as! FilterViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
