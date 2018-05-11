//
//  CreateContactViewController.swift
//  TestFireBase
//
//  Created by Ayhan on 2018/5/10.
//  Copyright © 2018 Abby. All rights reserved.
//

import UIKit
import FirebaseDatabase

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
        ref.child("123").observeSingleEvent(of: .value) { (snapshot) in
            print(snapshot)
            self.accountList = snapshot.value as! [Dictionary<String, String>];
        }
    }

    @IBAction func saveData(_ sender: UIBarButtonItem) {
        name = nameTextField.text!;
        email = emailTextField.text!;
        phoneNum = phoneNumTextField.text!;
        address = addressTextField.text!;
        
        let contact : Dictionary<String, String> = ["name": name, "email":email, "phoneNum":phoneNum, "address":address];
        self.accountList.append(contact)
        self.ref.child("123").setValue(self.accountList)
    }
}
