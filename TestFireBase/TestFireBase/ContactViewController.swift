//
//  ContactViewController.swift
//  TestFireBase
//
//  Created by Ayhan on 2018/5/10.
//  Copyright © 2018 Abby. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var phoneNumTextField: UITextField!
    @IBOutlet var addressTextField: UITextField!
    @IBOutlet var editOrDone: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.isEnabled = false
        emailTextField.isEnabled = false
        phoneNumTextField.isEnabled = false
        addressTextField.isEnabled = false
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func startEdit(_ sender: UIBarButtonItem) {
        
        nameTextField.isEnabled = true
        emailTextField.isEnabled = true
        phoneNumTextField.isEnabled = true
        addressTextField.isEnabled = true
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
