//
//  ChatNavViewController.swift
//  Modamily
//
//  Created by iMac Pro on 7/20/18.
//  Copyright © 2018 iMac Pro. All rights reserved.
//

import UIKit

class ChatNavViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        

        for item in (self.tabBarController?.tabBar.items)!{
            if item.tag == 1{
                item.image = item.image?.withRenderingMode(.alwaysOriginal)
            }            
        }
        
//        let premiumVC = self.storyboard.
        if UserDefaults.standard.bool(forKey: Constants.Keys.kUserPremium){
            self.viewControllers = [self.storyboard?.instantiateViewController(withIdentifier: "ChatViewController")] as! [UIViewController]
        }else{
            self.viewControllers = [self.storyboard?.instantiateViewController(withIdentifier: "InAppHelpViewController")] as! [UIViewController]
        }
        
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
