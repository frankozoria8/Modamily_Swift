//
//  FavouritesViewController.swift
//  Modamily
//
//  Created by iMac Pro on 7/16/18.
//  Copyright © 2018 iMac Pro. All rights reserved.
//

import UIKit

class FavouritesViewController: BaseViewController {

    
    @IBOutlet weak var btnYourFavourites: UIButton!
    @IBOutlet weak var btnFavouritedYou: UIButton!
    
    @IBOutlet weak var tblFavourites: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setupViews()
    }

    func setupViews(){
        
        for item in (self.tabBarController?.tabBar.items)!{
            if item.tag == 2{
                item.image = item.image?.withRenderingMode(.alwaysOriginal)
            }
        }
        self.addNavBarImage()
    }
    
    @IBAction func yourFavouritesAction(_ sender: Any) {
        
        self.btnYourFavourites.setTitleColor(UIColor.white, for: .normal)
        self.btnFavouritedYou.setTitleColor(UIColor.lightText, for: .normal)
        
        self.tblFavourites.reloadData()
    }
    @IBAction func favouritedYouAction(_ sender: Any) {

        self.btnFavouritedYou.setTitleColor(UIColor.white, for: .normal)
        self.btnYourFavourites.setTitleColor(UIColor.lightText, for: .normal)
        
        self.tblFavourites.reloadData()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension FavouritesViewController: UITableViewDataSource, UITableViewDelegate{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FavouritesTableViewCell", for: indexPath) as! FavouritesTableViewCell
        cell.imgProfile.image = #imageLiteral(resourceName: "profile")
        cell.lblFullname.text = "full name sample"
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
