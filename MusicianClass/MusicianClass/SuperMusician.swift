//
//  SuperMusician.swift
//  MusicianClass
//
//  Created by Omercan.Colak on 6.04.2023.
//

import Foundation

class SuperMusician : Musicians {
    func sing2() {
        print("enter night")
    }
    override func sing() {
        super.sing()
        print("exit light")
    }
}
