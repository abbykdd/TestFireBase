//
//  CreateContactViewController.swift
//  TestFireBase
//
//  Created by Ayhan on 2018/5/10.
//  Copyright © 2018 Abby. All rights reserved.
//

import UIKit

class CreateContactViewController: UIViewController {

    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var phoneNumTextField: UITextField!
    @IBOutlet var addressTextField: UITextField!
    let name: String! = nil
    let email: String = ""
    let phoneNum: String = ""
    let address: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func saveData(_ sender: UIBarButtonItem) {
        if name == nil {
            print("Name cannot be nil!")
        } else {

        }
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
