//
//  UserModel.swift
//  Modamily
//
//  Created by iMac Pro on 7/8/18.
//  Copyright © 2018 iMac Pro. All rights reserved.
//

import UIKit
import SwiftyJSON

enum GenderType: Int {
    case male = 0
    case female
}

enum AccountType: Int {
    case personal = 0
    case business
}

class UserModel: NSObject {

    static let currentUser = UserModel()
    
    var id: String?
    var firstName: String?
    var lastName: String?
    var email: String?
    var workemail: String?
    var phoneCode: String?
    var phoneNumber: String?
    var enablePoints: Int = 0
    var connectedValue: Int = 0
    var birthDay: Date?
    var gender: GenderType = .male
    var accountType: AccountType = .personal
    var password: String?
    
    var profileImage: String?
    var fullName: String {
        get {
            return (self.firstName ?? "") + " " + (self.lastName ?? "")
        }
    }
    
    var bio: String?
    
    var contactIdentifier: String?
    var updatedTime: String?
    var invited: Int = 0
    var accepted: Int = 0
    
    
    override init() {
        super.init()        
    }
    
//    init(_ json: JSON) {
//        super.init()
//        
//        self.id = json["id"].stringValue
//        self.firstName = json["first_name"].stringValue
//        self.lastName = json["last_name"].stringValue
//        self.email = json["email"].stringValue
//        self.profileImage = json["profile_image"].stringValue
//        self.phoneNumber = json["phone"].stringValue
//        self.updatedTime = json["updated_at"].stringValue
//        self.invited = json["invited"].intValue
//        
//    }
    
}
