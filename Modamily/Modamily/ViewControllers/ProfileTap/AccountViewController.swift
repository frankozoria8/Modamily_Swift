//
//  AccountViewController.swift
//  Modamily
//
//  Created by iMac Pro on 7/17/18.
//  Copyright © 2018 iMac Pro. All rights reserved.
//

import UIKit

class AccountViewController: BaseViewController {

    @IBOutlet weak var btnDone: UIButton!
    
    @IBOutlet weak var txfCurrentPassword: FloatLabelTextField!
    @IBOutlet weak var txfNewPassword: FloatLabelTextField!
    @IBOutlet weak var txfConfirmPassword: FloatLabelTextField!
    
    @IBOutlet weak var btnCancelPaid: UIButton!
    @IBOutlet weak var btnDeactivateFacebook: UIButton!
    @IBOutlet weak var btnDeactivateAccount: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        self.setupViews()
        
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

extension AccountViewController: UITextFieldDelegate{
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
}

