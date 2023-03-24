//
//  ViewController.swift
//  Day11-AlertProject
//
//  Created by Omercan.Colak on 24.03.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var password2Text: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpClicked(_ sender: Any) {
        
        // create the alert
      /*   let alert = UIAlertController(title: "My Title", message: "This is my message.", preferredStyle: UIAlertController.Style.alert)

         // add an action (button)
         alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
         // (Handler : nil) butona basıldığında ne oolsun diye soruyor bir şey olmasın diyoruz.

         // show the alert
         self.present(alert, animated: true, completion: nil)
         // self.present --> bir şeyi göster diyor.*/
        //  if let text = userNameText.text , text.isEmpty
        if userNameText.text == "" {
            /*let userNameAlert = UIAlertController(title: "Error", message: "Username Can't be empty", preferredStyle: UIAlertController.Style.alert)
            userNameAlert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(userNameAlert, animated: true, completion: nil)*/
            makeAlert(titleInput:"Error", messagesInput:"Username Can't be Empty")
        }else if passwordText.text == "" {
            makeAlert(titleInput: "Error", messagesInput: "Password Can't be Empty")
           /* let userNameAlert = UIAlertController(title: "Error", message: "Password Can't be empty", preferredStyle: UIAlertController.Style.alert)
            userNameAlert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(userNameAlert, animated: true, completion: nil)*/
        }else if passwordText.text != password2Text.text {
              makeAlert(titleInput: "Error", messagesInput: "Passwords Not Match!!!")
          /*/  let userNameAlert = UIAlertController(title: "Error", message: "Passwords not Match!!", preferredStyle: UIAlertController.Style.alert)
            userNameAlert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(userNameAlert, animated: true, completion: nil)*/
        }else {
           makeAlert(titleInput: "Success", messagesInput: "User OK")
            /*let userNameAlert = UIAlertController(title: "Success", message: "User OK", preferredStyle: UIAlertController.Style.alert)
            userNameAlert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(userNameAlert, animated: true, completion: nil)*/
        }
 
    }
    func makeAlert(titleInput:String, messagesInput:String) {
        let userNameAlert = UIAlertController(title: titleInput, message: messagesInput, preferredStyle: UIAlertController.Style.alert)
        userNameAlert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(userNameAlert, animated: true, completion: nil)
        
    }
    
}

