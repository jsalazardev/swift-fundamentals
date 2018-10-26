import UIKit

//: Opcionales

var possibleNumber : String = "123"
var convertedNumber : Int? = Int(possibleNumber)
possibleNumber = "abc"
convertedNumber = Int(possibleNumber)

// Valores opcionales ? !


if convertedNumber == nil {
    print("Error cast", convertedNumber as Any)
}
