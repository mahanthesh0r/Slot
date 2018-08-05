//
//  ViewController.swift
//  Slot
//
//  Created by Mahanthesh R on 04/08/18.
//  Copyright © 2018 Mahanthesh. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {
    @IBOutlet weak var EmailTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    @IBOutlet weak var LoginButton: UIButton!
    
    
    @IBAction func LoginAction(_ sender: UIButton) {
        if EmailTextField.text != "" && PasswordTextField.text != ""
        {
            Auth.auth().signIn(withEmail: EmailTextField.text!, password: PasswordTextField.text!) { (user, error) in
                if user != nil
                {
                    print("Successfull")
                }
                else
                {
                  print("login failed")
                }
            }
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //view.setGradientBackground(colorOne: Colors.brightOrange, colorTwo: Colors.orange)
        LoginButton.setGradientBackground(colorOne: Colors.brightOrange, colorTwo: Colors.orange)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

