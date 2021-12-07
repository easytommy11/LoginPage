//
//  ViewController.swift
//  LoginPage
//
//  Created by Tomiwa Babalola on 12/2/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var usernameButton: UITextField!
    @IBOutlet var forgotUsername: UIButton!
    @IBOutlet var forgotPassword: UIButton!
    
   
 
    @IBAction func forgotPasswordButton(_ sender: Any) {
        performSegue(withIdentifier: "ForgotUsernameOrPassword", sender: forgotPassword)

        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func forgotUserName(_ sender: Any) {
        performSegue(withIdentifier: "ForgotUsernameOrPassword", sender: forgotUsername)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        guard let sender = sender as? UIButton else {return}
        if sender == forgotPassword {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUsername {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = usernameButton.text
        }

    }
   
    


}

