import UIKit

//? var ise "Değer var ise istenileni yapar. Değer yok ise herhangi bir şey yapmaz"
//! var ise "Değerin olduğundan %100 eminim" demek.

var myName : String?

myName?.uppercased()

// optionals : ? vs !

var myAge = "apple"


var myInteger = (Int(myAge) ?? 0) * 5

if let myNumber = Int(myAge){
    print(myNumber * 5)
}else {
    print("Wrong input")
}
