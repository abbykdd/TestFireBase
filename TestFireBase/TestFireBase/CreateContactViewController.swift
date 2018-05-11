//
//  CreateContactViewController.swift
//  TestFireBase
//
//  Created by Ayhan on 2018/5/10.
//  Copyright © 2018 Abby. All rights reserved.
//

import UIKit
import FirebaseDatabase
import FirebaseAuth

class CreateContactViewController: UIViewController {

    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var phoneNumTextField: UITextField!
    @IBOutlet var addressTextField: UITextField!
    var name: String! = nil
    var email: String = ""
    var phoneNum: String = ""
    var address: String = ""
    
    var ref: DatabaseReference!
    var accountList: [Dictionary<String, String>] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ref = Database.database().reference()
        let user:User = Auth.auth().currentUser!
        
        ref.child(user.uid).observeSingleEvent(of: .value) { (snapshot) in
            print(snapshot)
            
            if snapshot.exists() {
                self.accountList = snapshot.value as! [Dictionary<String, String>];
            } else {
                self.accountList = []
            }
        }
    }

    @IBAction func saveData(_ sender: UIBarButtonItem) {
        name = nameTextField.text!;
        email = emailTextField.text!;
        phoneNum = phoneNumTextField.text!;
        address = addressTextField.text!;
        
        let contact : Dictionary<String, String> = ["name": name, "email":email, "phoneNum":phoneNum, "address":address];
        self.accountList.append(contact)
        let user:User = Auth.auth().currentUser!
        self.ref.child(user.uid).setValue(self.accountList)
        
        self.dismiss(animated: true, completion: nil)
    }
}
