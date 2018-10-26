import UIKit

var myArray = [Int]()
var opciones : [Int] = []
var opciones1 : [Int] = [10,26,34,48,] //is equals [10,26,34,48]
var opcionesA : [String] = ["diez", "veinte", "treinta"]

print(opciones1)

var total1 = opciones1.count
var total2 = opcionesA.count
print(total1)
print(total2)

print(opciones.isEmpty)
print(opciones1.isEmpty)

opciones1.insert(2, at: opciones1.endIndex)
opciones1.insert(123, at: opciones1.endIndex)
opciones1.insert(23, at: opciones1.endIndex)
opciones1.insert(293, at: opciones1.endIndex)
opciones1.insert(32, at: opciones1.endIndex)
opciones1.insert(1, at: opciones1.endIndex)

print(opciones1)
print(opciones1.endIndex)
opciones1.remove(at: opciones1.endIndex-1)

for val in opciones1{
    print(val)
}

var cont : Int = 0
for _ in opciones1{
    let val = opciones1[cont]
    opciones1.remove(at: cont)
    opciones1.insert(val, at: opciones1.endIndex)
    print(opciones1)
}


//Collections
var mySet = Set<String>()
var conjunto : Set<String> = []
var conjuntoA : Set<String> = ["alumno", "profesor", "secretaria"]
var conjuntoB : Set<String> = ["conserje", "director", "delegado", "alumno"]

var resInte = conjuntoA.intersection(conjuntoB)
print(resInte)
var resDif = conjuntoA.symmetricDifference(conjuntoB)
print(conjuntoB)
var union = conjuntoA.union(conjuntoB)
print(union)
var subs = conjuntoA.subtracting(conjuntoB)
print(subs)

// Example
var elementsA: Set<String> = ["a", "b", "c", "d", "e"]
var elementsB: Set<String> = ["a", "b", "f", "g", "h", "u", "v"]
var elementsC: Set<String> = ["h", "g", "j", "t", "v"]
var elementsD: Set<String> = ["j", "k", "l", "m", "a", "z"]
print("-----------")
print("Union D y A: ", elementsD.union(elementsA).sorted())
print("Union C y B: ", elementsC.union(elementsB).sorted())
print("Elementos comunes de A y B: ", elementsA.intersection(elementsB).sorted())
print("Elementos diferentes de C y D: ", elementsC.symmetricDifference(elementsD).sorted())
print("Los elementos de B que estan en C: ", elementsB.intersection(elementsC).isEmpty)
print("Elementos de C que no estan en D: ", elementsC.subtracting(elementsD).sorted())
print("Elementos de A que no estan en B: ", elementsA.subtracting(elementsB).sorted())
print("Existen valores en comun entre A y D: ", elementsA.intersection(elementsD).isEmpty)
print("Existen valores en comun entre C y B: ", elementsC.intersection(elementsB).isEmpty)
