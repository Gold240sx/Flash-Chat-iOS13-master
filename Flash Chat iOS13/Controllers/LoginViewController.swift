//
//  LoginViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var loginErrorAlert: UILabel!
    
    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                self.loginErrorAlert.text = ""
                if let e = error {
                    self.loginErrorAlert.text = "Error: \(e.localizedDescription)"
                } else {
                    self.performSegue(withIdentifier: K.loginSegue, sender: self)
                }
            }
        }
    }
    
//    @IBAction func registerPressed(_ sender: UIButton) {
//        if let email = emailTextfield.text, let password = passwordTextfield.text {
//            Auth.auth().createUser(withEmail: email, password: password) { authResul, error in
//                if let e = error {
//                    self.registrationErrorAlert.text = "Error: \(e.localizedDescription)"
//                } else {
//                    self.registrationErrorAlert.text = ""
//                    self.performSegue(withIdentifier: "RegisterToChat", sender: self)
//                }
//            }
//        }
//    }
    
}
