//
//  SignupViewController.swift
//  Demo
//
//  Created by Dipanwita Bardhan on 09/08/22.
//

import UIKit

class SignupViewController: UIViewController {
    @IBOutlet weak var backgroundViewBig : UIView!
    @IBOutlet weak var firstName : UITextField!
    @IBOutlet weak var lastName : UITextField!
    @IBOutlet weak var email : UITextField!
    @IBOutlet weak var password : UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI ()
       
    }
    
    @IBAction func submitAction(_ sender: Any) {
        let email = email.text
        UserDefaults.standard.set("\(email ?? "")", forKey: "email")
        
        let password = password.text
        UserDefaults.standard.set("\(password ?? "")", forKey: "password")
        
        let firstName = firstName.text
        UserDefaults.standard.set("\(firstName ?? "")", forKey: "firstName")
        
        let lastName = lastName.text
        UserDefaults.standard.set("\(lastName ?? "")", forKey: "lastName")
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "VC") as! ViewController
        self.navigationController!.pushViewController(vc, animated: true)
        
    }
    
}
