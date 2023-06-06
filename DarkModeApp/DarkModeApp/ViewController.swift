//
//  ViewController.swift
//  DarkModeApp
//
//  Created by Ömercan Çolak on 5.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //kullanıcının seçtiğine bakmaksızın light mode da açar
        //overrideUserInterfaceStyle = .light
        
    }
    override func viewWillAppear(_ animated: Bool) {
        let userInterFaceStyle = traitCollection.userInterfaceStyle
        if userInterFaceStyle == .dark {
            changeButton.tintColor = UIColor.white
        }else{
            changeButton.tintColor = UIColor.blue
        }
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        let userInterFaceStyle = traitCollection.userInterfaceStyle
        if userInterFaceStyle == .dark {
            changeButton.tintColor = UIColor.white
        }else{
            changeButton.tintColor = UIColor.blue
        }
    }


}

