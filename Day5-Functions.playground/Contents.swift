import UIKit

func myFunction(){
    print("My Function is working")
}

myFunction()

// Input & Output & Return

func sumFunction(x:Int, y:Int) -> Int {
    return x + y
}

let myFunctionVariable = sumFunction(x: 2, y: 42)
print(myFunctionVariable)

func logicFunction(a: Int, b:Int) -> Bool {
    if a > b {
        return true
    }else {
        return false
    }
}

logicFunction(a: 21, b: 12)
