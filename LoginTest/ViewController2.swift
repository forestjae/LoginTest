//
//  ViewController2.swift
//  LoginTest
//
//  Created by 이승재 on 2021/01/20.
//

import UIKit
import Firebase

class ViewController2: UIViewController {
    @IBOutlet weak var emailSignTextField: UITextField!
    @IBOutlet weak var passwordSignTextField: UITextField!
    @IBOutlet weak var siginButton: UIButton!


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signButtonTouched(_ sender: Any)
    {Auth.auth().createUser(withEmail: emailSignTextField.text!, password: passwordSignTextField.text!) { authResult, error in
        if authResult != nil {
            print("Signin Success")
        }
        else {
            print("Signin Failed")
        }
      }
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
