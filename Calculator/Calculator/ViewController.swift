//
//  ViewController.swift
//  Calculator
//
//  Created by Omercan.Colak on 17.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstText: UITextField!
    @IBOutlet weak var secondTextt: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sumClicked(_ sender: Any) {
        if let firstNumber = Int(firstText.text!) {
            if let secondNumber = Int(secondTextt.text!) {
                result = firstNumber + secondNumber
                resultLabel.text = String(result)
            }
        }
    }
    @IBAction func minusClicked(_ sender: Any) {
        if let firstNumber = Int(firstText.text!) {
            if let secondNumber = Int(secondTextt.text!) {
                result = firstNumber - secondNumber
                resultLabel.text = String(result)
            }
        }
    }
    @IBAction func multiplyClicked(_ sender: Any) {
        if let firstNumber = Int(firstText.text!) {
            if let secondNumber = Int(secondTextt.text!) {
                result = firstNumber * secondNumber
                resultLabel.text = String(result)
            }
        }
    }
    @IBAction func divideClicked(_ sender: Any) {
        if let firstNumber = Int(firstText.text!) {
            if let secondNumber = Int(secondTextt.text!) {
                result = firstNumber / secondNumber
                resultLabel.text = String(result)
            }
        }
    }
    
}

