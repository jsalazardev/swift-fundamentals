import Cocoa

//: Closures

let digitNames = [
    0: "Zero", 1: "One", 2: "Two", 3: "Three",
    4: "Four", 5: "Five", 6: "Six", 7: "Seven",
    8: "Eight", 9: "Nine"
]

let numbers = [16, 58, 510]

let strings = numbers.map({
    (number) -> String in
    var number = number
    var output = ""
    repeat {
        output = digitNames[number % 10]! + output
        print(output)
        number /= 10
    } while number > 0
    return output
})

// Ejemplo de un closure con filtro
// Haciendo un filtro que solo retorna los valores
// cuales el modulo de 2 es igual a cero.

var myArray = [0,1,2,3,4,5,6,7,8,9]
myArray.filter { (value) -> Bool in
    return value % 2 == 0
}


// Ejemplo de un closure con reduce.
// Haciendo la suma de todos lo valores proporcionados.

let values = [1,2,3,4,5,6]
let sumValues = values.reduce(0, { x, y in
    x + y
})
