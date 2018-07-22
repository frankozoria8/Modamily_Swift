//
//  LandingViewController.swift
//  Modamily
//
//  Created by iMac Pro on 7/15/18.
//  Copyright © 2018 iMac Pro. All rights reserved.
//

import UIKit

class LandingViewController: BaseViewController {

    @IBOutlet weak var imageBoy: UIImageView!
    var originFrame = CGRect.zero
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        // Show the Navigation Bar
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        perform(#selector(self.animation), with: nil, afterDelay: 1.0)
        
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    @objc func animation(){
        
        UIView.animate(withDuration: 0.4, animations: {
            self.imageBoy.frame = CGRect(origin: CGPoint(x: self.imageBoy.frame.origin.x, y: self.imageBoy.frame.origin.y - 40), size: self.imageBoy.bounds.size)
        }, completion: { (completed) in
            UIView.animate(withDuration: 0.4, animations: {
                self.imageBoy.frame = CGRect(origin: CGPoint(x: self.imageBoy.frame.origin.x, y: self.imageBoy.frame.origin.y + 80), size: self.imageBoy.bounds.size)
            }, completion: { (completed) in
                UIView.animate(withDuration: 0.4, animations: {
                    self.imageBoy.frame = CGRect(origin: CGPoint(x: self.imageBoy.frame.origin.x, y: self.imageBoy.frame.origin.y - 80), size: self.imageBoy.bounds.size)
                }, completion: { (completed) in
                    
                    UIView.animate(withDuration: 0.4, animations: {
                        self.imageBoy.frame = CGRect(origin: CGPoint(x: self.imageBoy.frame.origin.x, y: self.imageBoy.frame.origin.y + 40), size: self.imageBoy.bounds.size)
                    }, completion: { (completed) in
                        self.delayWithSeconds(0.5, completion: {
                            let vc = self.storyboard?.instantiateViewController(withIdentifier: "GetStartViewController") as! GetStartViewController
                            
                            self.navigationController?.pushViewController(vc, animated: true)
                        })
                    })
                    
                })
            })
        })
        
    }
    override var prefersStatusBarHidden: Bool{    
        return true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
