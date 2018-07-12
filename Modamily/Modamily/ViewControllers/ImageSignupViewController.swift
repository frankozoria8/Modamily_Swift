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
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.addLeftItemImage()

    }

    override func viewDidLayoutSubviews() {
        
        profileImageView.layer.cornerRadius = profileImageView.frame.size.width/2
        profileImageView.clipsToBounds = true
        
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
