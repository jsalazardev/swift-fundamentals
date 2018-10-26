import UIKit

//: Tipos numericos

var number1 : UInt = UInt.max
var number2 : UInt8 = UInt8.max
var number3 : Int = Int.max
var number4 : Int32 = Int32.max
var number5 : UInt32 = UInt32.max
var number6 : UInt64 = UInt64.max
// Descomente la siguiente linea para demostrar el error.
// number4 = 3000000000 // error

var myDouble : Double = Double.pi
var myFloat : Float = Float.pi

//: Conversiones numéricas

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
// let twoThousandAndOne = twoThousand + one // error
let twoThousandAndOne = twoThousand + UInt16(one)

let three = 3
let pointOneFourOneFiveNine = 0.14159
// let pi = three + pointOneFourOneFiveNine // error
let pi = Double(three) + pointOneFourOneFiveNine
