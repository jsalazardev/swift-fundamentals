import Cocoa

func greet(_ person: String, on day: String) -> String{
    return "Hello \(person) today is \(day)"
}

greet("Salvador", on: "Monday")
// Hello Salvador today is Monday

func greet2(_ person: String = "guy", on day: String) {
    print("Hello \(person) today is \(day)!")
}

var greeting : () = greet2(on: "friday")
greeting = greet2("Roger", on:"saturday")

var greeting2 : (String,String) -> () = greet2
greeting2("Roger","sunday")

// functions callback
func suma(a:Int,b:Int) -> Int{
    return a+b
}

func multi(a:Int, b:Int) -> Int{
    return a*b
}

func divNum(a:Int, b:Int) -> Int{
    return b != 0 ? a/b : 0
}

func resta(a:Int, b:Int) -> Int{
    return a-b
}

func mod(a:Int, b:Int) -> Int{
    return a%b
}

func fact(a:Int, b:Int = 0) -> Int{
    var fact = 1
    for i in 1...a {
        fact *= i
    }
    return fact
}


func factRec(a: Int, b:Int = 0) -> Int{
    if a==1 {return 1}
    return factRec(a : a-1) * a
}

func printMathResult(operation: (Int,Int) -> Int,a: Int, b: Int) -> Void{
    print("Result: \(operation(a,b))")
}

func printMathResult(a: Int){
    print(a);
}


printMathResult(operation: suma, a: 2, b: 1)
printMathResult(operation: multi, a: 2, b: 4)
printMathResult(operation: divNum, a: 10, b: 5)
printMathResult(operation: resta, a: 2, b: 5)
printMathResult(operation: mod, a: 2, b: 6)
printMathResult(operation: fact, a: 3, b: 3)
printMathResult(operation: factRec, a: 5    , b: 3)
printMathResult(a: 3)
