//
//  ViewController.swift
//  SegueApp
//
//  Created by Omercan.Colak on 23.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    var userName = ""
    override func viewDidLoad() {
        //view yüklenince fakat sadece ilk çalıştırmada çağırılır.
        //Farklı view'lar arasında geçiş yaparken tekrar çağırılmaz.
        super.viewDidLoad()
        print("viewDidLoad function Called")
        // Do any additional setup after loading the view.
        //Lifecycle
    }
    //view Kaybolunca
    override func viewDidDisappear(_ animated: Bool) {
        print("viewdidDisappear function Called")
    }
    //view Kaybolacak
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear function Called")
    }
    //view görünecek
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear function Called")
        nameText.text = " "
    }
    //view göründü
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear function Called")
    }
    
    @IBAction func nextClicked(_ sender: Any) {
        userName = nameText.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            // as Kullanılması gerekiyor (casting etmek için)
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
        }
    }
    
}

