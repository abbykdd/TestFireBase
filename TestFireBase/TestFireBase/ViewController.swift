//
//  ViewController.swift
//  TestFireBase
//
//  Created by Ayhan on 2018/5/10.
//  Copyright © 2018 Abby. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseUI

class ViewController: UIViewController, FUIAuthDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // check if signed in, if not
        
        let authUI = FUIAuth.defaultAuthUI()
        // You need to adopt a FUIAuthDelegate protocol to receive callback
        authUI?.delegate = self
        
        let providers: [FUIAuthProvider] = [
            FUIGoogleAuth(),
            ]
        
        authUI?.providers = providers
        
        let authViewController = authUI!.authViewController()
        self.present(authViewController, animated: true, completion: nil)


    }
    
    func authUI(_ authUI: FUIAuth, didSignInWith user: User?, error: Error?) {
        self.dismiss(animated: true, completion: nil)
    }
}

