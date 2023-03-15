import UIKit

var myNumber = 1
 
myNumber = myNumber + 1
myNumber += 1

var number = 0

// While Loop

while number <= 10 {
    print(number)
    number += 1
}

var characterAlive = true

while characterAlive == true {
    print("characterAlive")
    characterAlive = false
}

3 < 5
5 <= 3
5 == 5
4 != 5

// For Loop

var myFruitArray = ["Banana", "Apple", "Orange"]

//Dizimizdeki elemanları fruit değişkenine bütün elemanları atar ve yazdırırız
for fruit in myFruitArray {
    print(fruit)
}

var myNumbers = [10,20,30,40,50,60,70]


for i in myNumbers {
    print(i / 5)
}
