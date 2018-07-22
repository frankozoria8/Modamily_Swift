//
//  ImageSignupViewController.swift
//  Modamily
//
//  Created by iMac Pro on 7/8/18.
//  Copyright © 2018 iMac Pro. All rights reserved.
//

import UIKit

class ImageSignupViewController: BaseViewController {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var lblAddPhoto: UILabel!
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
        
        self.profileImageView.layer.cornerRadius = profileImageView.frame.size.width/2
        self.profileImageView.clipsToBounds = true
        
        
    }
    
    @IBAction func addImageAction(_ sender: Any) {
        
        let imagePickerVC = self.storyboard?.instantiateViewController(withIdentifier: "ImagePickerViewController") as! ImagePickerViewController
        imagePickerVC.delegate = self
        self.present(imagePickerVC, animated: true, completion: nil)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
extension ImageSignupViewController: ImagePickerViewControllerDelegate {
    func didSelectProfileImage(_ image: UIImage) {
        self.profileImageView.image = image
    }
}
