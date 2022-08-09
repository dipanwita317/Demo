//
//  RootNavViewController.swift
//  Demo
//
//  Created by Dipanwita Bardhan on 09/08/22.
//

import UIKit

class RootNavViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let email =  UserDefaults.standard.string(forKey: "email")
          let password =  UserDefaults.standard.string(forKey: "password")
          if email != "" && password != ""{
             
            
                    
           
              let storyboard = UIStoryboard(name: "Main", bundle: nil)
              let secondVC = storyboard.instantiateViewController(identifier: "VC")

              show(secondVC, sender: self)
              
          }else{
             
              let storyboard = UIStoryboard(name: "Main", bundle: nil)
              let secondVC = storyboard.instantiateViewController(identifier: "SignupViewController")

              show(secondVC, sender: self)
          }
/*
        if (UserDefaults.standard.value(forKey: "email") != nil) {
            
          let email =  UserDefaults.standard.string(forKey: "email")
            let password =  UserDefaults.standard.string(forKey: "password")
            if email != "" && password != ""{
                let appDelegate = UIApplication.shared.delegate! as! SceneDelegate
                let mainVC = ViewController()
                appDelegate.window!.rootViewController = mainVC
                appDelegate.window?.makeKeyAndVisible()
                      
               // self.navigationController?.pushViewController(vc, animated: true)
                
            }
            
            
            
            

        } else {
            let appDelegate = UIApplication.shared.delegate! as! AppDelegate
            let mainVC = SignupViewController()
            appDelegate.window?.rootViewController = mainVC
            appDelegate.window?.makeKeyAndVisible()
        }*/
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
