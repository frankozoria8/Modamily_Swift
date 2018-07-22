//
//  WebViewController.swift
//  Modamily
//
//  Created by iMac Pro on 7/17/18.
//  Copyright © 2018 iMac Pro. All rights reserved.
//

import UIKit

class WebViewController: BaseViewController {

    var urlStr = String()
    var webType = Int()
    
    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        self.setupViews()
        
        switch webType {
        case 2:
            urlStr = WebServiceURL.Learn_URL
        case 5:
            urlStr = WebServiceURL.Privacy_URL
        case 6:
            urlStr = WebServiceURL.Terms_URL
            
        default:
            break
        }
        if let url = URL(string: urlStr) {
            let request = URLRequest(url: url)
            self.webView.loadRequest(request)
        }
        
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
    
}
extension WebViewController: UIWebViewDelegate{
    func webViewDidStartLoad(_ webView: UIWebView) {
        self.showProgressView(title: "")
    }
    func webViewDidFinishLoad(_ webView: UIWebView) {
        self.hideProgressView()
    }
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        self.hideProgressView()
    }
    func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        self.hideProgressView()
        return true
    }
}
