//
//  ViewController.swift
//  Myinstagram
//
//  Created by WebEngineering on 3/3/2559 BE.
//  Copyright © 2559 mycompany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textUsername: UITextField!
    @IBOutlet weak var textPassword: UITextField!
    @IBOutlet weak var textConfiramPassword: UITextField!
    @IBOutlet weak var textEmail: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func buttonSignUp_OnClick() {
        if textPassword.text == textConfiramPassword.text{
            let kumuAPI = Kumulos()
            kumuAPI.createUserWithUsername(textUsername.text, andPassword: textPassword.text, andEmail: textEmail.text, andAuthData: "test")
        }
    }
    
    @IBAction func buttonCancel_OnClick() {
        textUsername.text = ""
        textPassword.text = ""
        textConfiramPassword.text = ""
        textEmail.text = ""
    }
    
}

