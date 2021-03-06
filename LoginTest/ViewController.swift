//
//  ViewController.swift
//  LoginTest
//
//  Created by 이승재 on 2021/01/20.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    


    override func viewDidLoad() {
        super.viewDidLoad()
        if let user = Auth.auth().currentUser {
            emailTextField.placeholder = "이미 로그인 된 상태입니다"
            passwordTextField.placeholder = "이미 로그인 된 상태입니다"
            loginButton.setTitle("이미 로그인 된 상태입니다", for: .normal)
    
        }
    }

    @IBAction func loginButtonTouched(_ sender: Any)
    {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { [weak self] authResult, error in
            if authResult != nil {
                print("Login Success")
            }
            else {
                print("Login Failed")
            }
        }
    }
    


}

