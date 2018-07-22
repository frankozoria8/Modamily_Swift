
//
//  ChatViewController.swift
//  Modamily
//
//  Created by iMac Pro on 7/16/18.
//  Copyright © 2018 iMac Pro. All rights reserved.
//

import UIKit

class ChatViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setupViews()
    }

    func setupViews(){
        
        self.addNavBarImage()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
