//
//  ViewController.swift
//  Modamily
//
//  Created by iMac Pro on 7/8/18.
//  Copyright © 2018 iMac Pro. All rights reserved.
//

import UIKit
import NVActivityIndicatorView

class BaseViewController: UIViewController {

    var tapGesture: UITapGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        self.view.layer.removeAllAnimations()
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        NotificationCenter.default.addObserver(self, selector: #selector(didChangeKeyboardFrame(_:)), name: Notification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(willHideKeyboardFrame(_:)), name: Notification.Name.UIKeyboardWillHide, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(didHideKeyboardFrame(_:)), name: Notification.Name.UIKeyboardDidHide, object: nil)
    }
    
    // MARK: - Notifications
    
    @objc func willHideKeyboardFrame(_ notification: Notification) {
        
    }
    
    @objc func didHideKeyboardFrame(_ notification: Notification) {
        self.view.gestureRecognizers?.forEach({self.view.removeGestureRecognizer($0)})
    }
    
    @objc func didChangeKeyboardFrame(_ notification: Notification) {
        let notidata = notification.userInfo as! [String: Any]
        print(notidata)
        tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
        self.view.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleTap(_ gesture: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
    
    @IBAction func goBack(_ sender: Any?) {
        if let navVC = self.navigationController {
            navVC.popViewController(animated: true)
        } else {
            self.dismiss(animated: true, completion: nil)
        }
    }
    func pushwithModaTransition(targetVC: UIViewController){
        let transition = CATransition()
        transition.duration = 0.0
//        transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
        transition.type = kCATransitionFade
        self.navigationController?.view.layer.add(transition, forKey: nil)
        _ = self.navigationController?.pushViewController(targetVC, animated: false)
    }
    func closeView(){
        let transition = CATransition()
        transition.duration = 0.0
//        transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        transition.type = kCATransitionFade
        navigationController?.view.layer.add(transition, forKey: nil)
        _ = navigationController?.popViewController(animated: false)
    }
    func getEmailPlaceholder(email: String) -> String{
        var placeholder = String()
        if let range = email.range(of: "@") {
            let firstPart = email.index(range.lowerBound, offsetBy: -2)
            let result = email.dropFirst(firstPart.encodedOffset).description
            placeholder = String(repeating:"*", count:firstPart.encodedOffset) + result
            print(placeholder)
        }
        return placeholder
    }
    func delayWithSeconds(_ seconds: Double, completion: @escaping () ->()){
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            completion()
        }
    }
    
    func addNavBarImage() {
        let navController = navigationController!
        
        let image = UIImage(named: "Modamily") 
        let imageView = UIImageView(image: image)
        
        let bannerWidth = navController.navigationBar.frame.size.width
        let bannerHeight = navController.navigationBar.frame.size.height
        
        let bannerX = bannerWidth / 2 - (image?.size.width)! / 2
        let bannerY = bannerHeight / 2 - (image?.size.height)! / 2
        
        imageView.frame = CGRect(x: bannerX, y: bannerY, width: bannerWidth, height: bannerHeight)
        imageView.contentMode = .scaleAspectFit
        
        navigationItem.titleView = imageView
//        let navbarImage = UIImage(named: "modamily_small_logo")?.stretchableImage(withLeftCapWidth: 0, topCapHeight: 1)
//        self.navigationController?.navigationBar.setBackgroundImage(navbarImage, for: .default)

    }
    func addNavBarEmptyImage() {
        
        let navController = navigationController!
        
        let image = UIImage(named: "emptyIcon")
        let imageView = UIImageView(image: image)
        
        let bannerWidth = navController.navigationBar.frame.size.width
        let bannerHeight = navController.navigationBar.frame.size.height
        
        let bannerX = bannerWidth / 2 - (image?.size.width)! / 2
        let bannerY = bannerHeight / 2 - (image?.size.height)! / 2
        
        imageView.frame = CGRect(x: bannerX, y: bannerY, width: bannerWidth, height: bannerHeight)
        imageView.contentMode = .scaleAspectFit
        
        navigationItem.titleView = imageView
        
    }
    func addLeftItemImage(){
        let button = UIButton.init(type: .custom)
        button.setImage(UIImage.init(named: "left_arrow-1"), for: UIControlState.normal)
        button.addTarget(self, action:#selector(self.goBack(_:)), for:.touchUpInside)
        button.frame = CGRect.init(x: 0, y: 0, width: 30, height: 44) //CGRectMake(0, 0, 30, 30)
        let barButton = UIBarButtonItem.init(customView: button)
        self.navigationItem.leftBarButtonItem = barButton
    }
    
    
}
extension UIViewController: NVActivityIndicatorViewable {
    func showProgressView(title:String){
        
        var size = CGSize(width: 35, height: 35)
        
        if DeviceType.IS_IPHONE_5{
            size = CGSize(width: 30, height: 30)
        }
        NVActivityIndicatorView.DEFAULT_COLOR = .lightGray
        startAnimating(size, message: title, type: NVActivityIndicatorType(rawValue: 24)!)
    }
    
    func hideProgressView(){
        self.stopAnimating()
    }
}
extension UITextField {
    
    @IBInspectable var bottomBorderColor: UIColor? {
        get {
            return self.bottomBorderColor
        }
        set {
            self.borderStyle = UITextBorderStyle.none;
            let border = CALayer()
            let width = CGFloat(0.5)
            border.borderColor = newValue?.cgColor
            border.frame = CGRect(x: 0, y: self.frame.size.height - width,   width:  self.frame.size.width + self.frame.size.height, height: self.frame.size.height)
            
            border.borderWidth = width
            self.layer.addSublayer(border)
            self.layer.masksToBounds = true
            
        }
    }
}

