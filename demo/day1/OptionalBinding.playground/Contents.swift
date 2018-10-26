import UIKit

//: Opcionales

var possibleNumber : String = "123"
var convertedNumber : Int? = Int(possibleNumber)
possibleNumber = "abc"
convertedNumber = Int(possibleNumber)

//: Optional Binding

var result : Int
var result2 : Int
var messageOB : String
var num = 6
possibleNumber = "4"
convertedNumber = Int(possibleNumber)

// Las siguientes dos lineas causan error porque el valor
// es un tipo opcional y no esta siendo forzado o desempaquetado.

if let opt = convertedNumber{
    result = opt + num
}else{
    result = 0
}

messageOB = "The result is: \(result)"

if let opt = convertedNumber{
    result = opt + num
}else{
    result = 0
}
messageOB = "The result is: \(result)"

// Descomente el siguiente bloque de codigo para validar el
// Optional Binding en un ciclo infinito.


 while let opt =  convertedNumber{
 result2 = opt + num
 }
 messageOB = "The result is: \(result)"

