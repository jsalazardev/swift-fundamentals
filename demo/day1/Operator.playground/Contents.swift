import UIKit

import Foundation

//: Operadores de Asignacion

let (x,y) = (1,2)
let z = 3

//: Operadores Aritmeticos

var a = z - 3       // Operación de Resta
a = y + x       // Operación de Suma
a = z * y       // Operación de Multiplicacion
a = 100 / z     // Operación de División
a = z % 2       // Operación de Módulo

//: Operador de asignacion compuesto
// La siguiente linea es una representacion de a = a + 2
a += 2

//: Operadores de identidad

class Auto: NSObject{}

let elAuto = Auto()
let miAuto = Auto()

if elAuto === miAuto {//Valida las referencias a memoria
    print("Pertenecen al mismo tipo 1")
}

let miOtroAuto = miAuto

if miOtroAuto === miAuto {
    print("Pertenecen al mismo tipo 2")
}

//: Operador condicional ternario
// Es una abreviacion de un control de flujo llamado IF

a == 10 ? print("A es igual a 10") : print("A no es igual a 10")

//: Operador coalecente nulo
// Es una abreviacion de un condicional ternario pero
// este evalua un valor nulo al primer elemento.
// a != nil ? a! : z
(a ?? z)

//: Operadores de rango
(a..<10)

