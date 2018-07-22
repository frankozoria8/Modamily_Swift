//
//  AboutViewController.swift
//  Modamily
//
//  Created by iMac Pro on 7/17/18.
//  Copyright © 2018 iMac Pro. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    @IBOutlet weak var txfWhoIam: UITextView!
    @IBOutlet weak var lblWhoPlaceholder: UILabel!
    @IBOutlet weak var txfWhatIamLook: UITextView!
    @IBOutlet weak var lblWhatPlaceholder: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.setupViews()
        
    }

    func setupViews(){
        
        if self.txfWhoIam.text.isEmpty{
            self.lblWhoPlaceholder.isHidden = false
        }else{
            self.lblWhoPlaceholder.isHidden = true
        }
        
        if self.txfWhatIamLook.text.isEmpty{
            self.lblWhatPlaceholder.isHidden = false
        }else{
            self.lblWhatPlaceholder.isHidden = true
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
extension AboutViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
 
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AboutCollectionViewCell", for: indexPath) as! AboutCollectionViewCell
        return cell
    }
}

extension AboutViewController: UITextViewDelegate{
    func textViewDidChange(_ textView: UITextView) {
        if let text = self.txfWhoIam.text, text.count > 0{
            self.lblWhoPlaceholder.isHidden = true
        }else{
            self.lblWhoPlaceholder.isHidden = false
        }
        if let text = self.txfWhatIamLook.text, text.count > 0{
            self.lblWhatPlaceholder.isHidden = true
        }else{
            self.lblWhatPlaceholder.isHidden = false
        }
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        
    }
    func textViewDidEndEditing(_ textView: UITextView) {
        
    }
    
//    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
//
//        let currentText:String = textView.text
//        let updatedText = (currentText as NSString).replacingCharacters(in: range, with: text)
//
//        // If updated text view will be empty, add the placeholder
//        // and set the cursor to the beginning of the text view
//        if updatedText.isEmpty {
//
//            if textView == self.txfWhoIam{
//                self.txfWhoIam.text = PLACEHOLDER.WhoIam
//                self.txfWhoIam.textColor = UIColor.lightGray
//                self.txfWhoIam.selectedTextRange = self.txfWhoIam.textRange(from: self.txfWhoIam.beginningOfDocument, to: self.txfWhoIam.beginningOfDocument)
//            }else if textView == self.txfWhatIamLook{
//                self.txfWhatIamLook.text = PLACEHOLDER.WhatIamLook
//                self.txfWhatIamLook.textColor = UIColor.lightGray
//                self.txfWhatIamLook.selectedTextRange = self.txfWhatIamLook.textRange(from: self.txfWhatIamLook.beginningOfDocument, to: self.txfWhatIamLook.beginningOfDocument)
//            }
//
//
//        }
//
//            // Else if the text view's placeholder is showing and the
//            // length of the replacement string is greater than 0, set
//            // the text color to black then set its text to the
//            // replacement string
//        else if self.txfWhoIam.textColor == UIColor.lightGray && !text.isEmpty {
//            self.txfWhoIam.textColor = UIColor.black
//            self.txfWhoIam.text = text
//        }
//        else if self.txfWhatIamLook.textColor == UIColor.lightGray && !text.isEmpty {
//            txfWhatIamLook.textColor = UIColor.black
//            txfWhatIamLook.text = text
//        }
//
//            // For every other case, the text should change with the usual
//            // behavior...
//        else {
//            return true
//        }
//
//        // ...otherwise return false since the updates have already
//        // been made
//        return false
//
//    }
}

