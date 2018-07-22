//
//  SubscriptionViewController.swift
//  Modamily
//
//  Created by iMac Pro on 7/20/18.
//  Copyright © 2018 iMac Pro. All rights reserved.
//

import UIKit

class SubscriptionViewController: BaseViewController {

    var packagesListArray = ["3 month PC package",
                             "6 month package",
                             "3 month package",
                             "1 month package"]
    
    var pricesListArray = ["$99.99","$24.99","$29.99","$34.99"]
    
    @IBOutlet weak var collectionView: UICollectionView!
    var timer = Timer()
    var visableIndex = 0
    
    @IBOutlet weak var pageControl: UIPageControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setupViews()
        
    }

    func setupViews(){
        
        self.navigationItem.title = "Premium Subscription"
        self.navigationController?.navigationBar.titleTextAttributes =
            [NSAttributedStringKey.foregroundColor: UIColor.darkGray,
             NSAttributedStringKey.font: UIFont(name: FontName.k_FontName_BodoniBold, size: 25)!]
        
        self.addLeftItemImage()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.tabBarController?.tabBar.isHidden = true
        self.timer.invalidate()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.timer = Timer.scheduledTimer(withTimeInterval: 5.0, repeats: true, block: { (timer) in
            if self.visableIndex == 0{
                self.collectionView.scrollToItem(at: IndexPath(item: 1, section: 0), at: .right, animated: true)
                self.visableIndex = 1
            }else if self.visableIndex == 1{
                self.collectionView.scrollToItem(at: IndexPath(item: 0, section: 0), at: .left, animated: true)
                self.visableIndex = 0
            }
        })
        
    }
    @IBAction func pageControlChanged(_ sender: Any) {
        self.collectionView.scrollToItem(at: IndexPath(item: self.pageControl.currentPage, section: 0), at: .centeredHorizontally, animated: true)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
extension SubscriptionViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.item == 0{
            let cell0 = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell0", for: indexPath)
            return cell0
        }else{
            let cell1 = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell1", for: indexPath)
            return cell1
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.size.width, height: collectionView.bounds.size.height)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.timer.invalidate()
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let pageIndex: Int = Int(self.collectionView.contentOffset.x / self.collectionView.bounds.size.width)
        self.pageControl.currentPage = pageIndex
    }
}

extension SubscriptionViewController: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SubscriptionTableCell", for: indexPath) as! SubscriptionTableCell
        cell.lblTitle.text = self.packagesListArray[indexPath.item]
        cell.lblPrice.text = self.pricesListArray[indexPath.item]
        if indexPath.item == 0{
            cell.imgCheck?.image = #imageLiteral(resourceName: "tick_InApp")
            cell.lblTitle.textColor = UIColor.black
            cell.lblPrice.textColor = UIColor.black
            cell.lblUnit.textColor = UIColor.black
        }else{
            cell.imgCheck?.image = #imageLiteral(resourceName: "emptyIcon")
            cell.lblTitle.textColor = Colors.normarColor
            cell.lblPrice.textColor = Colors.normarColor
            cell.lblUnit.textColor = Colors.normarColor
        }
        
        return cell
    }
}
