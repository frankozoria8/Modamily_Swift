
//
//  GetStartViewController.swift
//  Modamily
//
//  Created by iMac Pro on 7/8/18.
//  Copyright © 2018 iMac Pro. All rights reserved.
//

import UIKit

import FBSDKLoginKit

import SCPageControl

class GetStartViewController: BaseViewController {

    var introImages = [#imageLiteral(resourceName: "intro0 "), #imageLiteral(resourceName: "intro1"), #imageLiteral(resourceName: "intro2"), #imageLiteral(resourceName: "intro3"), #imageLiteral(resourceName: "intro4"), #imageLiteral(resourceName: "intro5")]
    var introLabels = ["Welcome to the premier community for people ready to have children.", " Modamily provides introductions to people ready to take that next step in life and start a family, whether modern or traditional.", " Prefer a known donor to anonymous? Modamily helps singles and couples find the sperm or egg donor that is right for them.", "Modamily makes match recommendations based on a variety of criteria including: religion, education, income, ethnicity, and our parenting and lifestyle quiz.", "Try our Personal Concierge Service, and our staff work with you to find the best match for the arrangement you are looking for.", "It's time to bring your dream to life. Register now for free!"]
    
    
    @IBOutlet weak var pageControl: SCPageControlView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.setupViews()
        
    }

    
    func setupViews(){
        self.addNavBarImage()
        self.navigationItem.setHidesBackButton(true, animated:true);
        
        self.pageControl.scp_style = .SCJAMoveCircle
        self.pageControl.set_view(5, current: 0, tint_color: .white)
        
    }
    
    
    @IBAction func loginViaEmail(_ sender: Any) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        self.navigationController?.navigationItem.setHidesBackButton(true, animated: true)
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    @IBAction func loginWithFacebook(_ sender: Any) {
        let fbloginManager = FBSDKLoginManager()
        fbloginManager.logIn(withReadPermissions: ["email"], from: self) { (result, error) in
            if error == nil{
                let fbloginresult:FBSDKLoginManagerLoginResult = result!
                if fbloginresult.grantedPermissions != nil{
                    if fbloginresult.grantedPermissions.contains("email"){
                        if FBSDKAccessToken.current() != nil{
                            
                            FacebookAuth.setUserToken(FBSDKAccessToken.current().tokenString)
                            FacebookAuth.setID(FBSDKAccessToken.current().userID)
                            
                            FacebookAuth.setIsLoggedIn(true)
                            
                            self.fetchFbProfileInfo()
//                            self.showFBFriends()
                        }
                    }
                }
            }else{
                AppDelegate.AppDelegate().showingAlertView(title: String(format: "Failed!", "Facebook"), message: (error?.localizedDescription)!)
            }
        }
    }
    func fetchFbProfileInfo(){
        FBSDKGraphRequest(graphPath: "me", parameters: ["fields":"id, name, first_name, last_name, picture.type(large), email"]).start(completionHandler: { (connection, result, error) in
            if error == nil{
                let profileInfo = result as! [String: AnyObject]
                print(profileInfo)
                if let picture = profileInfo["picture"] as? [String: AnyObject], let data = picture["data"] as? [String: AnyObject], let url = data["url"] as? String{
                    print(url)
                    let id = profileInfo["id"] as? String
                    let fullname = profileInfo["name"] as? String
                    let firstname = profileInfo["first_name"] as? String
                    let lastname = profileInfo["last_name"] as? String
                    
                    print(id ?? "")
                    print(firstname ?? "")
                    print(lastname ?? "")
                    print(fullname ?? "")
                 }
            }else{
            }
        })
    }
//    func showFBFriends(){
//        FBSDKGraphRequest(graphPath: "me/taggable_friends", parameters: ["fields":"id, name, first_name, last_name, picture.type(large), email"]).start(completionHandler: { (connection, user, error) in
//            if error == nil{
//                let friends = user as! [[String: AnyObject]]
//                for friendsDic in friends{
//                    let friend = friendsDic["data"] as! [String: AnyObject]
//                    print("Friend: = \(friend)")
//                }
//            }else{
//            }
//        })
//    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension GetStartViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "IntroCollectionCell", for: indexPath) as! IntroCollectionCell
        cell.imgIntroduction.image = self.introImages[indexPath.item]
        cell.lblTitle.text = self.introLabels[indexPath.item]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.size.width, height: collectionView.bounds.size.height)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        self.pageControl.scroll_did(scrollView)
    }
}
