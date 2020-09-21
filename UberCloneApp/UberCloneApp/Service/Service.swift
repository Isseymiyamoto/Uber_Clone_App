//
//  Service.swift
//  UberCloneApp
//
//  Created by 宮本一成 on 2020/09/21.
//  Copyright © 2020 ISSEY MIYAMOTO. All rights reserved.
//

import Firebase

let DB_REF = Database.database().reference()
let REF_USERS = DB_REF.child("users")

struct Service {
    
    static let shared = Service()
    let currentUid = Auth.auth().currentUser?.uid
    
    func fetchUserData(completion: @escaping(String) -> Void){
        REF_USERS.child(currentUid!).observeSingleEvent(of: .value) { (snapshot) in
            guard let dictionary = snapshot.value as? [String: Any] else { return }
            guard let fullname = dictionary["fullname"] as? String else { return }
            completion(fullname)
        }
    }
    
}
