//
//  ProfileContainerVC.swift
//  Modamily
//
//  Created by iMac Pro on 7/17/18.
//  Copyright © 2018 iMac Pro. All rights reserved.
//

import UIKit
import Tabman
import Pageboy

class ProfileContainerVC: TabmanViewController {

    lazy var pageControllers: [UIViewController] = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let AboutVC = storyboard.instantiateViewController(withIdentifier: "AboutViewController")        
        let DetailVC = storyboard.instantiateViewController(withIdentifier: "DetailViewController")
        let MatchVC = storyboard.instantiateViewController(withIdentifier: "MatchQuizViewController")
        return [AboutVC, DetailVC, MatchVC]
    }()
    
    var currentPageIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dataSource = self
        self.bounces = false
        // configure the bar
        self.bar.items = [Item(title: "About"),
                          Item(title: "Details"),
                          Item(title: "Match Quiz")]
        
        self.bar.location = .top
        
        self.bar.appearance = TabmanBar.Appearance({ (appearance) in
            
            // customize appearance here
            appearance.state.color = .white
            appearance.state.selectedColor = .white
            appearance.layout.height = .explicit(value: 5)
            appearance.layout.itemVerticalPadding = 0.0
            appearance.text.font = UIFont(name: FontName.k_FontName_SFProDisplayRegular, size: 17.0)
            appearance.text.selectedFont = UIFont(name: FontName.k_FontName_SFProDisplayRegular, size: 17.0)
            
            appearance.indicator.color = .white
            appearance.indicator.isProgressive = false
            appearance.indicator.lineWeight = .normal
            appearance.indicator.bounces = false
            appearance.indicator.compresses = false
            appearance.indicator.useRoundedCorners = true
            appearance.layout.itemDistribution = .fill
            appearance.layout.edgeInset = 35.0 * self.view.bounds.width / 375
            if self.view.bounds.width == 320{
                appearance.layout.interItemSpacing = 35
            }else if self.view.bounds.width == 375{
                appearance.layout.interItemSpacing = 55
            }else if self.view.bounds.width == 414{
                appearance.layout.interItemSpacing = 75
            }
            
            appearance.style.background = .clear
            
        })
        
        self.scrollToPage(.at(index: self.currentPageIndex), animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension ProfileContainerVC: PageboyViewControllerDataSource{
    func numberOfViewControllers(in pageboyViewController: PageboyViewController) -> Int {
        return pageControllers.count
    }
    
    func viewController(for pageboyViewController: PageboyViewController,
                        at index: PageboyViewController.PageIndex) -> UIViewController? {
        return pageControllers[index]
    }
    
    func defaultPage(for pageboyViewController: PageboyViewController) -> PageboyViewController.Page? {
        return nil
    }
}
