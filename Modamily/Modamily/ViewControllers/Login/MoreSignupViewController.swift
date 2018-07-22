//
//  MoreSignupViewController.swift
//  Modamily
//
//  Created by iMac Pro on 7/8/18.
//  Copyright © 2018 iMac Pro. All rights reserved.
//

import UIKit

class MoreSignupViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func doneAction(_ sender: Any) {
        let mainTapVC = self.storyboard?.instantiateViewController(withIdentifier: "MainTapViewController") as! MainTapViewController
        self.navigationController?.navigationItem.setHidesBackButton(true, animated: true)
        self.navigationController?.pushViewController(mainTapVC, animated: true)
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
