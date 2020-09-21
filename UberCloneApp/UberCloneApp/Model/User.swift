//
//  User.swift
//  UberCloneApp
//
//  Created by 宮本一成 on 2020/09/21.
//  Copyright © 2020 ISSEY MIYAMOTO. All rights reserved.
//

struct User {
    let fullname: String
    let email: String
    let accountType: Int
    
    init(dictionary: [String: Any]) {
        self.fullname = dictionary["fullname"] as? String ?? ""
        self.email = dictionary["email"] as? String ?? ""
        self.accountType = dictionary["accountType"] as? Int ?? 0
    }
}
