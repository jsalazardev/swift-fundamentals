import Cocoa
import Foundation

var str = "Hello, playground"

// for-in - Example 1
var base = 5
var factorial = 1

for index in 1...base {
    factorial *= index
}

let resp = "\(base)! = \(factorial)"

// for-in - Example 2
var output = ""
let myScores = ["English":8,"Chemistry":7,"Physics":9,"Biology":7]

for (subject,score) in myScores {
    print("My score in \(subject) is \(score)")
}

//Control de flujo (while / repeat-while)

// while - Example 1

var message : String
base = 5
factorial = 1

base = 5
factorial = 1
var i = 1

while i<=base {
    factorial *= i
    i += 1
}

message = "\(base)! = \(factorial)"

// while - Example 2

var iterations = false
i = 0

repeat {
    i += 1
}while (iterations != false)

// If - Example 1

let languages = ["C","C++","Objective-C","Swift"]

for item in languages{
    if item == "Swift"{
        print("I like it \(item)")
    }else{
        print("\(item)")
    }
}

// switch - Example 1

var action = "walk"
switch action {
case "jump":
    print("the character is jumping")
    
case "walk":
    print("the character is walking")
    
case "run":
    print("the character is running")
    
default:
    print("the character is waitting for you...")
}


// switch - Exmaple 2

let aCharacter: Character = "a"
switch aCharacter {
case "a", "e", "i", "o", "u":
    print("\(aCharacter) is a vowel")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "ñ", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    print("\(aCharacter) is a consonant")
default:
    print("\(aCharacter) is a neither a consonant or vowel")
}



//: switch Example 3
// La función arc4random_uniform devuelve un valor aleatorio segun el parametro.
let n = Int(arc4random_uniform(50))

switch (n) {
case 0:
    print("El numero es igual a 0")
case 0..<10:
    print("El numero esta en un rango menor a 10")
case 10..<20:
    print("El numero esta en un rango menor a 20")
case 10..<30:
    print("El numero esta en un rango menor a 30")
case 10..<40:
    print("El numero esta en un rango menor a 40")
default:
    print("Cualquier otro caso")
}

// Guard - Example 1

func greet(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }
    print("Hello \(name)!")
    
    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }
    print("I hope the weather is nice in \(location).")
}

greet(person: ["name": "John"])
// "Hello John!"
// "I hope the weather is nice near you."

greet(person: ["name": "Jane", "location": "Cupertino"])
// "Hello Jane!"
// "I hope the weather is nice in Cupertino.

var apellido : String!

print(apellido)

var nombres = ["Juan","Pedro","Luis","Jose"]
print(nombres[.count-1])
