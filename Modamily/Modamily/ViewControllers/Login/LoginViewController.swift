//
//  LoginViewController.swift
//  Modamily
//
//  Created by iMac Pro on 7/8/18.
//  Copyright © 2018 iMac Pro. All rights reserved.
//

import UIKit

class LoginViewController: BaseViewController {

    @IBOutlet weak var btnForgotPassword: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.setupViews()
        
    }
    func setupViews(){

        self.navigationController?.navigationBar.titleTextAttributes =
            [NSAttributedStringKey.foregroundColor: Colors.appColor,
             NSAttributedStringKey.font: UIFont(name: FontName.k_FontName_BodoniBold, size: 25)!]
        self.btnForgotPassword.addBorder(side: .Bottom, color: Colors.appColor, width: 1.0)
        
        self.navigationItem.setHidesBackButton(true, animated: true)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationItem.setHidesBackButton(false, animated: true)
    }
    
    @IBAction func loginViaEmailAction(_ sender: Any) {
        
      let mainTapVC = self.storyboard?.instantiateViewController(withIdentifier: "MainTapViewController") as! MainTapViewController
        self.present(mainTapVC, animated: false, completion: nil)
    }
    @IBAction func signupAction(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SignupViewController") as! SignupViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
