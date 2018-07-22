//
//  Constants.swift
//  Modamily
//
//  Created by iMac Pro on 7/8/18.
//  Copyright © 2018 iMac Pro. All rights reserved.
//

import UIKit

struct AppInfo {
    static let AppStoreID                       = "902242970"
}
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
        static let kUserConnectedValue          = "KEY_USER_ConnectedValue"
        static let kUserBirthday                = "KEY_USER_Birthday"
        static let kUserPassword                = "KEY_USER_Password"
        static let kUserProfileImage            = "KEY_USER_ProfileImage"
        static let kUserBio                     = "KEY_USER_Bio"
        
        static let kUserPremium                 = "KEY_USER_ISPremium"
    }
    
}
struct PLACEHOLDER {
    static let WhoIam             = "I'm a single attractive professional living in NYC who's ready to have a child. Looking for someone from"
    static let WhatIamLook        = "Looking for someone to share and define a modern family with. I have been thinking about having a child"
}
struct FilterData {
    
    static let ANY_OF_THE_ABOVE = "Any of the above"
    
    static let DETAILARRAY = [["Gender","Location", "Who are looking"], ["Sexual orientation", "Race", "Ethnicity", "Zodiac Sign", "Religion", "Education", "Age", "Height", "Income", "Contact Options", "Relationship status", "Photos", "Last online", "Body type", "Diet", "Drink", "Drugs", "Smoke", "Fertilization method", "Blood type", "Hair color", "Eye color", "Health screen test", "Language", "Travel distance"]]
    
    static let KEY_Array = [["gender", "country", "looking_for"], ["orientation", "race", "ethnicity", "sign", "religion", "education", "age", "height", "income", "contact_options", "relationship", "have_photo", "lastlogin", "body_type", "diet", "drinks", "drugs", "smoke", "fertilization", "blood_type", "hair", "eye_color", "health_screening_test", "speaks", "travel_distance"]]
    
    static let LookingForArray = ["for a co-parent", "for a known donor", "for a romantic relationship", "to be a known donor", "for a surrogate", ANY_OF_THE_ABOVE]
    
    static let TotalArray = [[["Male", "Female", ANY_OF_THE_ABOVE], "", ["Co-parent", "Looking for a known donor", "Open to a romantic relationship", "Looking to be a known donor", "Surrogate", ANY_OF_THE_ABOVE]], [["Straight", "Gay", "Bi-sexual", "Trans", ANY_OF_THE_ABOVE], ["Asian", "Black", "White", "Hispanic/latin", "Native american", "Indian", "Latino", "Native tribes", "Middle east", "Mixed", "Other", "Undeclared", ANY_OF_THE_ABOVE], ["African", "American Indian", "Brazilian", "Caribbean", "Chinese", "Czech", "Danish", "Dutch", "English", "Filipino", "French", "German", "Greek", "Hungarian", "Indian", "Irish", "Italian", "Japanese", "Jewish", "Korean", "Lebanese", "Mexiacn", "Norvegian", "Pacific Islander", "Polish", "Portuguese", "Russian", "Scotish", "Slavic", "Slovakian", "Spanish", "Swedish", "Thai", "Welsh", ANY_OF_THE_ABOVE], ["Aries", "Taurus", "Gemini", "Cancer", "Leo", "Virgo", "Libra", "Scorpio", "Sagittarius", "Capricorn", "Aquarius", "Pisces", ANY_OF_THE_ABOVE], ["Atheist", "Agnosticism", "Christianity", "Catholicism", "Judaism", "Islam", "Buddism", "Hinduism", "Orthodox Christian", "Other", ANY_OF_THE_ABOVE], ["High school", "2 year college", "4 year university", "Masters", "Law school", "Medical phd", "School of life", ANY_OF_THE_ABOVE], ["20", "30", "40", "50"], ["5'0 (152 cm)", "5'1 (154 cm)", "5'2 (157 cm)", "5'3 (160 cm)", "5'4 (162 cm)", "5'5 (165 cm)", "5'6 (167 cm)", "5'7 (170 cm)", "5'8 (172 cm)", "5'9 (175 cm)", "5'10 (177 cm)", "5'11 (180 cm)", "6'0 (182 cm)", "6'1 (185 cm)", "6'2 (187 cm)", "6'3 (190 cm)", "6'4 (193 cm)", "6'5 (195 cm)", "6'6 (198 cm)", "6'7 (200 cm)", "6'8 (203 cm)", "6'9 (205 cm)", "6'10 (208 cm)", "6'11 (210 cm)", "7'0 (213 cm)", ANY_OF_THE_ABOVE], "INCOME SLIDER", ["Depends on the person", "Co-parent", "Limited contact", "Contact after 18", "No Contact", ANY_OF_THE_ABOVE], ["Single", "In a relationship", ANY_OF_THE_ABOVE], ["Not important", "Must have a photo", ANY_OF_THE_ABOVE], ["Online now", "In the last day", "In the last week", "In the last month", "In the last year", ANY_OF_THE_ABOVE], ["Thin", "Athletic", "Average", "Curvy", "Overweight", "Rather not say", ANY_OF_THE_ABOVE], ["Anything goes", "Healthy", "Vegetarian", "Vegan", "Kosher", "Only eat to survive", "Other", ANY_OF_THE_ABOVE], ["Very often", "Socially", "Rarely", "Not at all", ANY_OF_THE_ABOVE], ["Often", "Sometimes", "Never", ANY_OF_THE_ABOVE], ["Yes", "No", "Occasionally", ANY_OF_THE_ABOVE], ["Ivf", "Home insemination", "Artificial insemination", "Natural insemination", "Cryobank", "Depends on the person", ANY_OF_THE_ABOVE], ["A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-", "Unknown", ANY_OF_THE_ABOVE], ["Auburn", "Brown", "Black", "Blonde", "Dark brown", "Dirty blonde", "Light brown", "Red", "Strawberry blonde", "Orange", "Gray ", "Other", ANY_OF_THE_ABOVE], ["Black", "Blue", "Brown", "Green", "Hazel", ANY_OF_THE_ABOVE], ["Yes", "No", "Undecided", ANY_OF_THE_ABOVE], ["English", "Afrikaans", "Albanian", "Arabic", "Bulgarian", "Cantonese", "Catalan", "Croatian", "Czech", "Danish", "Dutch", "Estonian", "Farsi", "Finnish", "French", "German", "Greek", "Hebrew", "Hindi", "Hungarian", "Icelandic", "Indonesian", "Irish", "Italian", "Japanese", "Korean", "Latin", "Latvian", "Lithuanian", "Malay", "Mandarin", "Norwegian", "Other", "Persian", "Polish", "Portuguese", "Romanian", "Russian", "Serbian", "Slovak", "Slovenian", "Spanish", "Swedish", "Tagalong", "Thai", "Turkish", "Ukrainian", "Urdu", "Vietnamese", "Yiddis", ANY_OF_THE_ABOVE], ["Depends on the person", "Up to 10 miles", "Up to 50 miles", "Up to 100 miles", "Over 100 miles", ANY_OF_THE_ABOVE]]]
    
    static let CountryCodesArray = ["US", "CA", "AF", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CK", "CR", "CI", "HR", "CU", "CY", "CZ", "CS", "DK", "DJ", "DM", "DO", "TP", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "FX", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GN", "GW", "GY", "HT", "HM", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IL", "IT", "JM", "JP", "JO", "KZ", "KE", "KI", "KP", "KR", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NT", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "GS", "KN", "LC", "VC", "WS", "SM", "ST", "SA", "SN", "YU", "SC", "SL", "SG", "SK", "SI", "Sb", "SO", "ZA", "ES", "LK", "SH", "PM", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "UY", "UM", "SU", "UZ", "VU", "VA", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "YU", "ZR", "ZM", "ZW"]
    static let SortedCountryArray = ["United States", "Canada", "Afghanistan", "Albania", "Algeria", "American Samoa", "Andorra", "Angola", "Anguilla", "Antarctica", "Antigua and Barbuda", "Argentina", "Armenia", "Aruba", "Australia", "Austria", "Azerbaijan", "Bahamas", "Bahrain", "Bangladesh", "Barbados", "Belarus", "Belgium", "Belize", "Benin", "Bermuda", "Bhutan", "Bolivia", "Bosnia and Herzegovina", "Botswana", "Bouvet Island", "Brazil", "British Indian Ocean Territory", "Brunei Darussalam", "Bulgaria", "Burkina Faso", "Burundi", "Cambodia", "Cameroon", "Cape Verde", "Cayman Islands", "Central African Republic", "Chad", "Chile", "China", "Christmas Island", "Cocos (Keeling) Islands", "Colombia", "Comoros", "Congo", "Cook Islands", "Costa Rica", "Cote D'Ivoire (Ivory Coast)", "Croatia (Hrvatska)", "Cuba", "Cyprus", "Czech Republic", "Czechoslovakia (former)", "Denmark", "Djibouti", "Dominica", "Dominican Republic", "East Timor", "Ecuador", "Egypt", "El Salvador", "Equatorial Guinea", "Eritrea", "Estonia", "Ethiopia", "Falkland Islands (Malvinas)", "Faroe Islands", "Fiji", "Finland", "France", "France, Metropolitan", "French Guiana", "French Polynesia", "French Southern Territories", "Gabon", "Gambia", "Georgia", "Germany", "Ghana", "Gibraltar", "Greece", "Greenland", "Grenada", "Guadeloupe", "Guam", "Guatemala", "Guinea", "Guinea-Bissau", "Guyana", "Haiti", "Heard and McDonald Islands", "Honduras", "Hong Kong", "Hungary", "Iceland", "India", "Indonesia", "Iran", "Iraq", "Ireland", "Israel", "Italy", "Jamaica", "Japan", "Jordan", "Kazakhstan", "Kenya", "Kiribati", "Korea (North)", "Korea (South)", "Kuwait", "Kyrgyzstan", "Laos", "Latvia", "Lebanon", "Lesotho", "Liberia", "Libya", "Liechtenstein", "Lithuania", "Luxembourg", "Macau", "Macedonia", "Madagascar", "Malawi", "Malaysia", "Maldives", "Mali", "Malta", "Marshall Islands", "Martinique", "Mauritania", "Mauritius", "Mayotte", "Mexico", "Micronesia", "Moldova", "Monaco", "Mongolia", "Montserrat", "Morocco", "Mozambique", "Myanmar", "Namibia", "Nauru", "Nepal", "Netherlands", "Netherlands Antilles", "Neutral Zone", "New Caledonia", "New Zealand (Aotearoa)", "Nicaragua", "Niger", "Nigeria", "Niue", "Norfolk Island", "Northern Mariana Islands", "Norway", "Oman", "Pakistan", "Palau", "Panama", "Papua New Guinea", "Paraguay", "Peru", "Philippines", "Pitcairn", "Poland", "Portugal", "Puerto Rico", "Qatar", "Reunion", "Romania", "Russian Federation", "Rwanda", "S. Georgia and S. Sandwich Isls.", "Saint Kitts and Nevis", "Saint Lucia", "Saint Vincent and the Grenadines", "Samoa", "San Marino", "Sao Tome and Principe", "Saudi Arabia", "Senegal", "Serbia", "Seychelles", "Sierra Leone", "Singapore", "Slovak Republic", "Slovenia", "Solomon Islands", "Somalia", "South Africa", "Spain", "Sri Lanka", "St. Helena", "St. Pierre and Miquelon", "Sudan", "Suriname", "Svalbard and Jan Mayen Islands", "Swaziland", "Sweden", "Switzerland", "Syria", "Taiwan", "Tajikistan", "Tanzania", "Thailand", "Togo", "Tokelau", "Tonga", "Trinidad and Tobago", "Tunisia", "Turkey", "Turkmenistan", "Turks and Caicos Islands", "Tuvalu", "Uganda", "Ukraine", "United Arab Emirates", "United Kingdom", "Uruguay", "US Minor Outlying Islands", "USSR (former)", "Uzbekistan", "Vanuatu", "Vatican City State (Holy See)", "Venezuela", "Viet Nam", "Virgin Islands (British)", "Virgin Islands (U.S.)", "Wallis and Futuna Islands", "Western Sahara", "Yemen", "Yugoslavia", "Zaire", "Zambia", "Zimbabwe"]
}

// MARM: API
struct WebServiceURL{
    static let Base_URL = "http://modamily.com/api/"
    
    static var Signup_URL: String{
        return Base_URL + "user/signup"
    }
    static var Login_URL: String{
        return Base_URL + "user/login"
    }
    static var Learn_URL               = "http://modamily.com/learn/best-practices/"
    static var Privacy_URL             = "http://modamily.com/privacy/"
    static var Terms_URL               = "http://modamily.com/terms/"
}
// MARK: Push Notification
struct Pushnotification {
    static var DEVICE_TOKEN = ""
}

// MARK: Social share

struct SocialAPIs {
    
    struct Facebook {
        static let APIID                 = "1472587806338388"
        static let AppSecret             = "4f15f7a90b94baba53e30c602037d3b4"
        struct AuthKey {
            static let AuthToken         = "Facebook_Auth_Token"
            static let FirstTime         = "Facebook_First_Time"
            
            static let Firstname         = "Facebook_Firstname"
            static let Lastname          = "Facebook_Lastname"
            static let Email             = "Facebook_Email"
            static let ID                = "Facebook_ID"            
        }
    }
    
}

// MARK: Colors

struct Colors {
    
    static let appColor                 = UIColor(hex: "FB933B")       
    static let normarColor              = UIColor(hex: "4D4B4C")
    
    static let inActiveAppColor         = UIColor(hex: "80C7EA")
    static let lightGrayColor           = UIColor(hex: "D9D9D9")
    static let greenColor               = UIColor(hex: "2FB44A")
    static let confirmColor             = UIColor(hex: "0FDD7F")
    static let imageHighlight           = UIColor(hex: "37AAE4")
    static let titleColor               = UIColor(hex: "F5DD44")
    
    static let facebookColor            = UIColor(hex: "39579B")
    
}
struct FontName{
    static let k_FontName_SFProDisplayHeavy                = "SFProDisplay-Heavy"
    static let k_FontName_SFProDisplayRegular              = "SFProDisplay-Regular"
    static let k_FontName_SFProDisplayBold                 = "SFProDisplay-Bold"
    static let k_FontName_SFProDisplayBlack                = "SFProDisplay-Black"
    static let k_FontName_SFProDisplaySemibold             = "SFProDisplay-Semibold"
    static let k_FontName_SFProDisplayLight                = "SFProDisplay-Light"
    static let k_FontName_SFProDisplayMedium               = "SFProDisplay-Medium"
    static let k_FontName_SFProDisplayThin                 = "SFProDisplay-Thin"
    
     static let k_FontName_BodoniBold                      = "BodoniSvtyTwoITCTT-Bold"
     static let k_FontName_BodoniBookItalic                = "BodoniSvtyTwoITCTT-BookIta"
     static let k_FontName_BodoniBook                      = "BodoniSvtyTwoITCTT-Book"
    
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
