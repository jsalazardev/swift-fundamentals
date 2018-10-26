import UIKit

// Declaración de tipo en forma explicita.
let myExplicitValue : String = "My Weight is"
let myExplicitValue2 : Double = 70

// Declaración de tipo en forma Implícita.
let myImplicitValue = "My Weight is"

// Para incluir una variable (no String) dentro de un String utiliza \().
let yourWeight = "Your weight is \(myExplicitValue2)"

// Los Strings no permiten la conversión implícita de tipo de dato.
let myWeight = myImplicitValue + String(myExplicitValue2)

var str = "Hello, playground"

str.insert("¡", at: str.startIndex)
str.insert("!", at: str.endIndex)
str.insert("s", at: str.index(before: str.endIndex))
str.insert(contentsOf: " guys", at: str.index(before: str.endIndex))

// Concatenación de Strings
print("..." + str)
print("Esto es: \(str)")

str = "Buenos dias,"
print("Buenos dias, a todos");

//case 1
str = "Buenos dias,"
str.append(" a todos")
print(str)
//case 2
str = "Buenos dias,"
str += " a todos"
print(str)
//case 2
str = "Buenos dias,"
str.insert(contentsOf: " a todos", at: str.endIndex)
print(str)
