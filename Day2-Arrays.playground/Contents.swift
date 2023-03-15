import UIKit

var myFavoriteMovies = ["Pulp Fiction","Kill Bill","Reservoir Dogs",5,true] as [Any]

// as -> casting
// Any -> any object can be add on arrays

//index
myFavoriteMovies[0]
myFavoriteMovies[1]
myFavoriteMovies[2]
myFavoriteMovies[3]
myFavoriteMovies[4]


var myStringArray = ["Test5","Test2","Test1","Test4"]

myStringArray[0].uppercased()

//içinde kaç tane elaman var
myStringArray.count

//dizideki son eleman
myStringArray[myStringArray.count - 1]
myStringArray.last

//Alfabatik sıralıyor
myStringArray.sort()


var myNumberArray = [1,2,3,4,5,6,7,1,3,5,6]
myNumberArray.append(8) //sonuna eleman ekler
myNumberArray.last

myNumberArray[0] = 15
print(myNumberArray)


//Set (Unordered Collection(Sırasız Koleksiyon))
//Setler dizi gibi fakat indexleme yok. Aynı elemandan sadece 1 tane olabilir.

var mySet : Set = [1,2,3,4,5,3,4,6]
var myStringSet : Set = ["a","b","c","a"]

var myInternetArray = [1,2,3,1,2,5,6,2,1]
var myInternetSet = Set(myInternetArray)
print(myInternetArray) //diziyi birebir gösterir.
print(myInternetSet) //Tekrarlanan değerler görünmez ve karışık görünür.

var mySet1 : Set = [1,2,3]
var mySet2 : Set = [3,4,5]

var mySet3 = mySet1.union(mySet2) //Union birleştirmeye yarar.

print(mySet3)

//Dictionary
//Key-value pairing !! Önemli

var myFavoriteDirectors = ["Pulp Fiction" : "Tarantino", "Locks, Stock" : "Guy Ritchie" , "The Dark Knight" : "Christopher Nolan"]

myFavoriteDirectors["Pulp Fiction"]
myFavoriteDirectors["The Dark Knight"]

myFavoriteDirectors["Pulp Fiction"] = "Quentin Tarantino"

print(myFavoriteDirectors)

myFavoriteDirectors["Seven Samurai"] = "Akira Kurisowa"

print(myFavoriteDirectors)


var myDictionary = ["Run" : 100 , "Swim" : 200 , "Basketball" : 300]

myDictionary["Run"]
