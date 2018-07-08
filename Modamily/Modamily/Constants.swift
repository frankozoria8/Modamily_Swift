//
//  Constants.swift
//  Modamily
//
//  Created by iMac Pro on 7/8/18.
//  Copyright © 2018 iMac Pro. All rights reserved.
//

import UIKit

struct Constants {
    
    struct Keys {
        static let kUserID                      = "KEY_USER_ID"
        static let kAuthToken                   = "KEY_AUTH_TOKEN"
        static let kDeviceToken                 = "KEY_DEVICE_TOKEN"
        static let kAPPVERSION                  = "KEY_APP_VERSION"        
        static let kUserFirstTime               = "KEY_USER_FIRST_TIME"
        static let kUserFirstname               = "KEY_USER_Firstname"
        static let kUserLastname                = "KEY_USER_Lastname"
        static let kUserFullname                = "KEY_USER_Lastname"
        static let kUserEmail                   = "KEY_USER_Email"
        static let kUserWorkEmail               = "KEY_USER_Work_Email"
        static let kUserPhonenumber             = "KEY_USER_Phonenumber"
        static let kUserAreaCode                = "KEY_USER_AreaCode"
        static let kUserEnablePoints            = "KEY_USER_EnablePoints"
        static let kUserConnectedValue          = "KEY_USER_ConnectedValue"
        static let kUserBirthday                = "KEY_USER_Birthday"
        static let kUserPassword                = "KEY_USER_Password"
        static let kUserProfileImage            = "KEY_USER_ProfileImage"
        static let kUserSTINGCode               = "KEY_USER_STINGCode"
        static let kUserBio                     = "KEY_USER_Bio"
        static let kUserInterests               = "KEY_USER_Interests"
        static let kUserWork                    = "KEY_USER_Work"
        static let kUserEducation               = "KEY_USER_Education"
        static let kUserSocialLinks             = "KEY_USER_SocialLinks"
        
    }
    
}

// MARK: - Constant String of Alert or Label
struct RateConstant {
    static let timeInterval = 60 * 60
}
struct Messages {
    struct Logo {
        static let msgFirstStep                 = "Your First Step Toward Social Pollination."
        static let msgWelcomeBack               = "Welcome Back"
    }
    
    struct SignUp {
        static let introOne                     = "One account is all you need to keep up with friends and establish new connections instantly."
        static let introSecond                  = "Add unique connections to your HIVE to keep up with them in real-time."
        static let introThree                   = "Notifications will keep you in the loop with your network"
        static let tellYourself                 = "Tell us about yourself"
        static let verifyYourself               = "Verify Your Identity"
        static let identityMessage              = "Provide one or both"
        
        static let profileImage                 = "Profile Image"
        static let profileIdentity              = "Profile Identity"
        static let gatheringProfile             = "Gathering Your \nProfile Information"
        static let creatingConnectID            = "Creating your very \nown Connect iD"
        static let establishingCard             = "Establishing your \nSocial Card"
        static let requireComplete              = "%@ required to complete registration"
        static let increasetFirst               = "%@ to increase Profile Visibility by 4%@"
        static let increasetSeconde             = "%@ to increase Profile Visibility by 18%@"
        static let noLimit                      = "There are no limits to the number of STINGS"
    }
    struct LogIn {
        static let firstLoginWelcome       = "Welcome back"
        static let SuccessEmailSent        = "Success, we sent you an email"
        static let SuccessPhoneSent        = "Success, check your mobile device"
        static let EmailNotRegistered      = ""
        static let PhoneNotRegistered      = "Phonenumber Not Regitered. Please Try Again"
    }
    struct Share {
        static let Welcome                 = "Welcome, %@"
        static let LetsStart               = "Let's get started."
        static let Look                    = "Look,"
        static let FindPerson              = " you have one new person in your Hive!"
        static let TryScrolling            = "Try Scrolling"
        static let TryScrollingAgain       = "Try Scrolling"
        static let AllinOne                = "All in One"
        static let AllinOneDetail          = "All your accounts in one place.\nConsider it a shortcut to your social."
        static let WhatIsHive              = "What's a Hive?"
        static let WhatHiveDetail          = "The Hive is your real-time ticker to content. Including your closest connections, favorite brands, admired figures and anyone else you might let your parents meet."
        static let NaviagetHub             = "My Navigation Hub"
        static let NaviagetHubDetail       = "We wanted to give you access the most \nimportant features in one place."
        
    }
    struct LinkedAccount {
        static let SuccessLogin        = "Successfully logged in! 👍"
        static let FailedLogin         = "Failed of %@ Login! 👎"
        static let SuccessUploading    = "Successfully uploaded username! 👍"
        static let FailedUploading     = "Failed uploading username! 👎"
    }
    struct PopTip{
        static let linkAccount             = "Tap a hexagon to link that account"
        static let stingitForward          = "Invite 2 friends you would like to stay connected with"
        static let chatlistTitle           = "Beak the ice or simply stay in-touch"
        static let notificationTitle       = "Stay in the loop with your network"
        static let pageControlPop          = "Swipe left, swipe right"
    }
}

// MARM: API
struct WebServiceURL{
    static let Base_URL = "http://weightsitallabout.com/thetomo/api/"
    
    static var Signup_URL: String{
        return Base_URL + "user/signup"
    }
    static var Login_URL: String{
        return Base_URL + "user/login"
    }
}
// MARK: Push Notification
struct Pushnotification {
    static var DEVICE_TOKEN = ""
}

// MARK: Chatting service == QuickBlox
struct Chat_Service {
    static var applicationID: UInt = 71778
    static var authorizationKey    = "gP-S56MzhhtkXGK"
    static var authorizationSecret = "q7S2rFZxFGXYmQb"
    
    static var accountKey          = "8uALEXtcstHzVzA3Dzcs"
    static var accountID           = "98060"
}

// MARK: Social share

struct SocialAPIs {
    
    static let FacebookPostPlaceholder    = "Say something about this link..."
    static let FacebookCommentPlaceholder = "Write a comment..."
    
    struct Instagram {
        
//        static let AUTHURL                = "https://api.instagram.com/oauth/authorize/"
//        static let APIURl                 = "https://api.instagram.com/v1/users/"
        static let ClientID               = "7920e90b468a45b19ae6c0a86273928b"
        static let ClientSecret           = "0e6144886f09438a8c1e04fa16cc51a9"
        static let REDIRECT_URI           = "https://tomofortomorrow.com"
//        static let ACCESS_TOKEN           = "access_token"
//        static let SCOPE                  = "likes+comments+relationships"
        struct AuthKey {
            static let AuthToken          = "Instagram_Auth_Token"
            static let FirstTime          = "Instagram_First_Time"
        }
    }
    struct Facebook {
        static let APIID                 = "1047334588640000"
        static let AppSecret             = "7af43eafc6737a8e2590445971aaa4b4"
        struct AuthKey {
            static let AuthToken         = "Facebook_Auth_Token"
            static let FirstTime         = "Facebook_First_Time"
            
            static let Firstname         = "Facebook_Firstname"
            static let Lastname          = "Facebook_Lastname"
            static let Email             = "Facebook_Email"
            static let ID                = "Facebook_ID"            
        }
    }
    struct Twitter {
        static let APIKey                = "IXzvAUOKqU3tHnnDofXO5l3ik"
        static let APISecret             = "JkBKYCCacyWRPBwFIC18d3A8pTRzsBdG6XohEXIFFnGz91PTHn"
        struct AuthKey {
            static let AuthToken         = "Twitter_Auth_Token"
            static let FirstTime         = "Twitter_First_Time"
        }
    }
    struct Linkedin {
        
        static let linkedInKey           = "868oay6pbe2a22"
        static let linkedInSecret        = "ybKVI3PkMGLXnZV9"
        static let authorizationEndPoint = "https://www.linkedin.com/uas/oauth2/authorization"
        static let accessTokenEndPoint   = "https://www.linkedin.com/uas/oauth2/accessToken"
        static let linkedinRedirectURL   = "https://com.appcoda.linkedin.oauth/oauth"
        static let revokeUrl             = "https://api.linkedin.com/uas/oauth/invalidateToken"
        static let targetURLString       = "https://api.linkedin.com/v1/people/~:(public-profile-url)?format=json"
        
        struct AuthKey {
            static let AuthToken         = "Linkedin_Auth_Token"
            static let FirstTime         = "Linkedin_First_Time"
        }
    }
    struct Medium {
        static let APIKey                = "17ea5d32937f"
        static let APISecret             = "f4a88ce3531d2fbbd7d57d0484a9fd382bdfad4f"
        static let CallbackURL           = "http://mediumswift.herokuapp.com/callback/TOMO!" // https://github.com/drinkius/mediumswift.herokuapp.com
        struct AuthKey {
            static let AuthToken         = "Medium_Auth_Token"
            static let FirstTime         = "Medium_First_Time"
        }
    }
    struct Pinterest {
        static let APPID                 = "4963268448021921437"
        static let APPSecret             = "9bc512a3246d4cfc2d0f39aa273dbf6297eba9d96d98eb70a1865a6b921f5a1f"
        struct AuthKey {
            static let AuthToken         = "Pinterest_Auth_Token"
            static let FirstTime         = "Pinterest_First_Time"
        }
    }
    struct Tumblr {
        static let OAuthConsumerKey      = "hEhUh2siS46Oz0VLcJrC1lgN27hLmcmZTFZcBLeGAwzM09EEDA"
        static let OAuthConsumerSecret   = "gGHM8YOEyrEM8ZmtEhxeRmT8Zhn0iiHOWAeMYYGXhfaRKRNqzB"
        struct AuthKey {
            static let AuthToken         = "Tumblr_Auth_Token"
            static let AuthTokenSecret   = "Tumblr_Auth_TokenSecret"
            static let FirstTime         = "Tumblr_First_Time"
        }
    }
    struct Snapchat {
        struct AuthKey {
            static let AuthToken         = "Snapchat_Auth_Token"
            static let FirstTime         = "Snapchat_First_Time"
            static let SnapCodeImage     = "SnapChat_Code_Image"
        }
    }
    struct Psn {
        struct AuthKey {
            static let AuthToken         = "Psn_Auth_Token"
            static let FirstTime         = "Psn_First_Time"
        }
    }
    struct Xbox {
        struct AuthKey {
            static let AuthToken         = "Xbox_Auth_Token"
            static let FirstTime         = "Xbox_First_Time"
        }
    }
    struct Spotify {
        static let ClientID                 = "757760c84b1f4e9fb7caca5f035412ba"
        static let ClientSecret             = "87da6c24396f423f9178ebef3b246963"
        static let RedirectURL              = "TOMO://returnAfterLogin"
        static let RedirectURLHost          = "returnafterlogin"
        struct AuthKey {
            static let AuthToken         = "Spotify_Auth_Token"
            static let FirstTime         = "Spotify_First_Time"
        }
    }
}

// MARK: Colors

struct Colors {
    static let appColor                 = UIColor(hex: "FB933B")
    static let lightAppColor            = UIColor(hex: "5EB7E5")
    static let inActiveAppColor         = UIColor(hex: "80C7EA")
    static let lightGrayColor           = UIColor(hex: "D9D9D9")
    static let greenColor               = UIColor(hex: "2FB44A")
    static let confirmColor             = UIColor(hex: "0FDD7F")
    static let imageHighlight           = UIColor(hex: "37AAE4")
    static let titleColor               = UIColor(hex: "F5DD44")
    static let addedColor               = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.5)
    
    static let facebookColor            = UIColor(hex: "39579B")
    static let linkedInColor            = UIColor(hex: "2376AD")
    static let twitterColor             = UIColor(hex: "1DCAFF")
    static let tumblrColor              = UIColor(hex: "33506C")
    static let snapchatColor            = UIColor(hex: "FBFB00")
    static let instagramColor           = UIColor.clear
    static let mediumColor              = UIColor(hex: "66CDAA")
    static let spotifyColor             = UIColor(hex: "66D46E")
    static let ebayColor                = UIColor(hex: "E53238")
    static let pinterestColor           = UIColor(hex: "E53238")
    static let yelpColor                = UIColor(hex: "C92228")
    static let psnColor                 = UIColor(hex: "AF0606")
    static let xBoxColor                = UIColor(hex: "027D00")
    
    struct SocialShare {
        static let inActiveBorder       = UIColor(hex: "F0F0F0")
        static let linkAccountPop       = UIColor(hex: "0a0f44")
    }
    
    struct SocialCard {
        static let inActiveBack         = UIColor(red: 154 / 255, green: 154 / 255, blue: 154 / 255, alpha: 0.5)
        static let inActiveCard         = UIColor(hex: "5C552E")
        static let standardBoder        = UIColor(hex: "515051")
        static let standardMainBoder    = UIColor(hex: "26ABE3")        
    }
    

}
struct FontName{
    static let FuturaMedium         = "Futura-Medium"
    static let FuturaBold           = "Futura-Bold"
}
struct Password {
    static let regex                = "^(?:(?:(?=.*?[0-9])(?=.*?[-!@#$%&*ˆ+=_])|(?:(?=.*?[0-9])|(?=.*?[A-Z])|(?=.*?[-!@#$%&*ˆ+=_])))|(?=.*?[a-z])(?=.*?[0-9])(?=.*?[-!@#$%&*ˆ+=_]))[A-Za-z0-9-!@#$%&*ˆ+=_]{5,}$"//"^((?=.*[a-z])|(?=.*[0-9])|(?=.*[~`!@#$%^&*])).{5,}$"
    static let warning              = "Password must contain:\n 5 or more characters with one speical character or number"
    static let error                = "Password doesn't match"
}
struct Email {
    static let regex                = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
}
struct Phone {
    static let regex                = "^((\\+)|(00))[0-9]{6,14}$" /*"^\\d{3}-\\d{3}-\\d{4}$"*/
}
struct ScreenSize
{
    static let SCREEN_WIDTH         = UIScreen.main.bounds.size.width
    static let SCREEN_HEIGHT        = UIScreen.main.bounds.size.height
    static let SCREEN_MAX_LENGTH    = max(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT)
    static let SCREEN_MIN_LENGTH    = min(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT)
}

struct DeviceType
{
    static let IS_IPHONE_4_OR_LESS  = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH < 568.0
    static let IS_IPHONE_5          = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH == 568.0
    static let IS_IPHONE_6_7        = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH == 667.0
    static let IS_IPHONE_6P_7P      = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH == 736.0
    static let IS_IPHONE_X          = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH == 812.0
    static let IS_IPAD              = UIDevice.current.userInterfaceIdiom == .pad && ScreenSize.SCREEN_MAX_LENGTH == 1024.0
    static let IS_IPAD_PRO          = UIDevice.current.userInterfaceIdiom == .pad && ScreenSize.SCREEN_MAX_LENGTH == 1366.0
}
