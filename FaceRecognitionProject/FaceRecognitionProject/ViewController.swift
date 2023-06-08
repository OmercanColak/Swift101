//
//  ViewController.swift
//  FaceRecognitionProject
//
//  Created by Mustafa Ugur Atas on 8.06.2023.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func signInClicked(_ sender: Any) {
        
        let authContext = LAContext()
        
        var error: NSError?
        
        if authContext.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            authContext.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: "Is it You?") { success, error in
                if success == true {
                    //successfull auth
                    DispatchQueue.main.async {
                        self.performSegue(withIdentifier: "toSecondVC", sender: nil)
                    }
                    
                }else {
                    DispatchQueue.main.async {
                        self.myLabel.text = "Error!"
                    }
                 
                }
            }
        }
        
    }
}

