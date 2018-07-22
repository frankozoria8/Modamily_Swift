//
//  UserAuth.swift
//  Modamily
//
//  Created by iMac Pro on 7/8/18.
//  Copyright © 2018 iMac Pro. All rights reserved.
//

import UIKit
import SwiftyJSON

class UserAuth {
    static var userId: String {
        get {
            guard let value = UserDefaults.standard.value(forKey: Constants.Keys.kUserID) as? String else {
                return ""
            }
            return value
        }
    }
    
    static var token: String {
        get {
            guard let value = UserDefaults.standard.value(forKey: Constants.Keys.kAuthToken) as? String else {
                return ""
            }
            return value
        }
    }
    static var deviceToken: String {
        get {
            guard let value = UserDefaults.standard.value(forKey: Constants.Keys.kDeviceToken) as? String else {
                return ""
            }
            return value
        }
    }
    static var appVersion: String {
        get {
            guard let value = UserDefaults.standard.value(forKey: Constants.Keys.kAPPVERSION) as? String else {
                return ""
            }
            return value
        }
    }
    static var isLoggedin: Bool {
        get {
            guard let value = UserDefaults.standard.value(forKey: Constants.Keys.kUserFirstTime) as? Bool else {
                return false
            }
            return value
        }
    }
    
    class func setUserId(_ userId: String) {
        UserDefaults.standard.setValue(userId, forKey: Constants.Keys.kUserID)
        UserDefaults.standard.synchronize()
    }
    
    class func setUserToken(_ token: String) {
        UserDefaults.standard.setValue(token, forKey: Constants.Keys.kAuthToken)
        UserDefaults.standard.synchronize()
    }
    class func setDeviceToken(_ token: String) {
        UserDefaults.standard.setValue(token, forKey: Constants.Keys.kDeviceToken)
        UserDefaults.standard.synchronize()
    }
    class func setAppVersion(_ version: String) {
        UserDefaults.standard.setValue(version, forKey: Constants.Keys.kAPPVERSION)
        UserDefaults.standard.synchronize()
    }
    
    class func setIsLoggedIn(_ isLoggedIn: Bool) {
        UserDefaults.standard.setValue(isLoggedIn, forKey: Constants.Keys.kUserFirstTime)
        UserDefaults.standard.synchronize()
    }
    //
    class func setUserFirstname(_ firstname: String) {
        UserDefaults.standard.setValue(firstname, forKey: Constants.Keys.kUserFirstname)
        UserDefaults.standard.synchronize()
    }
    static var firstname: String {
        get {
            guard let value = UserDefaults.standard.value(forKey: Constants.Keys.kUserFirstname) as? String else {
                return ""
            }
            return value
        }
    }
    class func setUserLastname(_ lastname: String) {
        UserDefaults.standard.setValue(lastname, forKey: Constants.Keys.kUserLastname)
        UserDefaults.standard.synchronize()
    }
    static var lastname: String {
        get {
            guard let value = UserDefaults.standard.value(forKey: Constants.Keys.kUserLastname) as? String else {
                return ""
            }
            return value
        }
    }
    class func setUserEmail(_ email: String) {
        UserDefaults.standard.setValue(email, forKey: Constants.Keys.kUserEmail)
        UserDefaults.standard.synchronize()
    }
    static var email: String {
        get {
            guard let value = UserDefaults.standard.value(forKey: Constants.Keys.kUserEmail) as? String else {
                return ""
            }
            return value
        }
    }
    class func setUserWrokEmail(_ email: String) {
        UserDefaults.standard.setValue(email, forKey: Constants.Keys.kUserWorkEmail)
        UserDefaults.standard.synchronize()
    }
    static var workEmail: String {
        get {
            guard let value = UserDefaults.standard.value(forKey: Constants.Keys.kUserWorkEmail) as? String else {
                return ""
            }
            return value
        }
    }
    class func setUserPassword(_ password: String) {
        UserDefaults.standard.setValue(password, forKey: Constants.Keys.kUserPassword)
        UserDefaults.standard.synchronize()
    }
    static var password: String {
        get {
            guard let value = UserDefaults.standard.value(forKey: Constants.Keys.kUserPassword) as? String else {
                return ""
            }
            return value
        }
    }
    class func setUserPhonenumber(_ phonenumber: String) {
        UserDefaults.standard.setValue(phonenumber, forKey: Constants.Keys.kUserPhonenumber)
        UserDefaults.standard.synchronize()
    }
    static var phonenumber: String {
        get {
            guard let value = UserDefaults.standard.value(forKey: Constants.Keys.kUserPhonenumber) as? String else {
                return ""
            }
            return value
        }
    }
    class func setAreaCode(_ areaCode: String) {
        UserDefaults.standard.setValue(areaCode, forKey: Constants.Keys.kUserAreaCode)
        UserDefaults.standard.synchronize()
    }
    static var AreaCode: String {
        get {
            guard let value = UserDefaults.standard.value(forKey: Constants.Keys.kUserAreaCode) as? String else {
                return ""
            }
            return value
        }
    }
    class func setUserBirthday(_ birthday: String) {
        UserDefaults.standard.setValue(birthday, forKey: Constants.Keys.kUserBirthday)
        UserDefaults.standard.synchronize()
    }
    static var birthday: String {
        get {
            guard let value = UserDefaults.standard.value(forKey: Constants.Keys.kUserBirthday) as? String else {
                return ""
            }
            return value
        }
    }
    
    class func setUserConnectedValue(_ connectedValue: Int) {
        UserDefaults.standard.setValue(connectedValue, forKey: Constants.Keys.kUserConnectedValue)
        UserDefaults.standard.synchronize()
    }
    static var connectionValue: Int {
        get {
            guard let value = UserDefaults.standard.value(forKey: Constants.Keys.kUserConnectedValue) as? Int else {
                return 0
            }
            return value
        }
    }
    class func setUserProfileImage(_ profileImage: String) {
        UserDefaults.standard.setValue(profileImage, forKey: Constants.Keys.kUserProfileImage)
        UserDefaults.standard.synchronize()
    }
    static var profileImage: String? {
        get {
            guard let value = UserDefaults.standard.value(forKey: Constants.Keys.kUserProfileImage) as? String else {
                return nil
            }
            return value
        }
    }
    
    class func setUserBio(_ bio: String) {
        UserDefaults.standard.setValue(bio, forKey: Constants.Keys.kUserBio)
        UserDefaults.standard.synchronize()
    }
    static var Bio: String {
        get {
            guard let value = UserDefaults.standard.value(forKey: Constants.Keys.kUserBio) as? String else {
                return ""
            }
            return value
        }
    }
    
    class func logout() {
        let userDefault = UserDefaults.standard
        if let _ = userDefault.object(forKey: Constants.Keys.kUserFirstTime) {
            userDefault.removeObject(forKey: Constants.Keys.kUserFirstTime)
        }
    }
    class func resetDefualts(){
        let userDefault = UserDefaults.standard
        let dictionary = userDefault.dictionaryRepresentation()
        dictionary.keys.forEach { (key) in
            userDefault.removeObject(forKey: key)
        }
    }
    
    class func userInfoParsing(info: JSON){
        
        self.resetDefualts()
        
        self.setIsLoggedIn(true)
        self.setUserId((info["user"].dictionaryValue["id"]?.stringValue)!)
        self.setUserFirstname((info["user"].dictionaryValue["first_name"]?.stringValue)!)
        self.setUserLastname((info["user"].dictionaryValue["last_name"]?.stringValue)!)
        self.setUserEmail((info["user"].dictionaryValue["email"]?.stringValue)!)
        
        self.setAreaCode((info["user"].dictionaryValue["country_phone_code"]?.stringValue)!)
        self.setUserPhonenumber((info["user"].dictionaryValue["phone"]?.stringValue)!)
        
        self.setUserProfileImage((info["user"].dictionaryValue["profile_image"]?.stringValue)!)
        
        if let bio = info["user"].dictionaryValue["bio"]?.string{
            self.setUserBio(bio)
            UserModel.currentUser.bio = UserAuth.Bio
        }
        
        // Modeling
        UserModel.currentUser.id = UserAuth.userId
        UserModel.currentUser.firstName = UserAuth.firstname
        UserModel.currentUser.lastName = UserAuth.lastname
        UserModel.currentUser.email = UserAuth.email
//        UserModel.currentUser.password = UserAuth.password
        UserModel.currentUser.phoneNumber = UserAuth.phonenumber
        
        //        UserModel.currentUser.enablePoints = UserAuth.enablePoints
        //        UserModel.currentUser.connectedValue = UserAuth.connectionValue
        
        if UserAuth.profileImage != nil{
            UserModel.currentUser.profileImage = UserAuth.profileImage
        }
    }
    
}
