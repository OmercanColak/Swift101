//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Omercan.Colak on 23.03.2023.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var mySecondLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var myName = " "
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nameLabel.text = myName
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
