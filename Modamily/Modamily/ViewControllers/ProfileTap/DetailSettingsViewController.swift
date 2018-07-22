//
//  DetailSettingsViewController.swift
//  Modamily
//
//  Created by iMac Pro on 7/17/18.
//  Copyright © 2018 iMac Pro. All rights reserved.
//

import UIKit

class DetailSettingsViewController: BaseViewController {

    @IBOutlet weak var switchFilter: UISwitch!
    @IBOutlet weak var switchQuiz: UISwitch!
    @IBOutlet weak var switchMatch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        self.setupViews()
        
    }
    
    func setupViews(){
        self.addLeftItemImage()
        self.addNavBarImage()
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
