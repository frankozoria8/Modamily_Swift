//
//  FacebookAuth.swift
//  Modamily
//
//  Created by iMac Pro on 7/8/18.
//  Copyright © 2018 iMac Pro. All rights reserved.
//

import UIKit

class FacebookAuth {

    static var token: String {
        get {
            guard let value = UserDefaults.standard.value(forKey: SocialAPIs.Facebook.AuthKey.AuthToken) as? String else {
                return ""
            }
            return value
        }
    }
    static var firstname: String {
        get {
            guard let value = UserDefaults.standard.value(forKey: SocialAPIs.Facebook.AuthKey.Firstname) as? String else {
                return ""
            }
            return value
        }
    }
    static var lastname: String {
        get {
            guard let value = UserDefaults.standard.value(forKey: SocialAPIs.Facebook.AuthKey.Lastname) as? String else {
                return ""
            }
            return value
        }
    }
    static var email: String {
        get {
            guard let value = UserDefaults.standard.value(forKey: SocialAPIs.Facebook.AuthKey.Email) as? String else {
                return ""
            }
            return value
        }
    }
    static var id: String {
        get {
            guard let value = UserDefaults.standard.value(forKey: SocialAPIs.Facebook.AuthKey.ID) as? String else {
                return ""
            }
            return value
        }
    }
    static var isLoggedin: Bool {
        get {
            guard let value = UserDefaults.standard.value(forKey: SocialAPIs.Facebook.AuthKey.FirstTime) as? Bool else {
                return false
            }
            return value
        }
    }
    
    class func setUserToken(_ token: String) {
        UserDefaults.standard.setValue(token, forKey: SocialAPIs.Facebook.AuthKey.AuthToken)
        UserDefaults.standard.synchronize()
    }
    class func setFirstname(_ first: String) {
        UserDefaults.standard.setValue(first, forKey: SocialAPIs.Facebook.AuthKey.Firstname)
        UserDefaults.standard.synchronize()
    }
    class func setLastname(_ last: String) {
        UserDefaults.standard.setValue(last, forKey: SocialAPIs.Facebook.AuthKey.Lastname)
        UserDefaults.standard.synchronize()
    }
    class func setEmail(_ email: String) {
        UserDefaults.standard.setValue(email, forKey: SocialAPIs.Facebook.AuthKey.Email)
        UserDefaults.standard.synchronize()
    }
    class func setID(_ id: String) {
        UserDefaults.standard.setValue(id, forKey: SocialAPIs.Facebook.AuthKey.ID)
        UserDefaults.standard.synchronize()
    }
    class func setIsLoggedIn(_ isLoggedIn: Bool) {
        UserDefaults.standard.setValue(isLoggedIn, forKey: SocialAPIs.Facebook.AuthKey.FirstTime)
        UserDefaults.standard.synchronize()
    }
    
}
