//
//  HomeController.swift
//  UberCloneApp
//
//  Created by 宮本一成 on 2020/09/14.
//  Copyright © 2020 ISSEY MIYAMOTO. All rights reserved.
//

import UIKit
import Firebase
import MapKit

class HomeController: UIViewController{
    
    // MARK: - Properties
    
    private let mapView = MKMapView()
    
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        checkIfUserIsLoggedIn()
    }
    
    // MARK: - Helpers
    
    
    // MARK: - API
    
    func checkIfUserIsLoggedIn(){
        if Auth.auth().currentUser?.uid == nil {
            DispatchQueue.main.async {
                let nav = UINavigationController(rootViewController: LoginController())
                if #available(iOS 13.0, *) {
                    nav.isModalInPresentation = true
                }
                nav.modalPresentationStyle = .fullScreen
                self.present(nav, animated: true, completion: nil)
            }
        }else {
            configureUI()
        }
    }
    
    func signOut(){
        do{
            try Auth.auth().signOut()
        } catch{
            print("DEBUG: error signing out")
        }
    }
    
    // MARK: - Helpers
    
    func configureUI(){
        view.addSubview(mapView)
        mapView.frame = view.frame
    }
    
}
