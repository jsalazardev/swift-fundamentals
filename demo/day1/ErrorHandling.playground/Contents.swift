import Cocoa

//: Error Handling

var insufficientFounds: Bool = false
var outOfStock: Bool = true

enum VendingMachineError: Error {
    case insufficientFounds
    case outOfStock
}

func vendItem() throws {
    if insufficientFounds {
        throw VendingMachineError.insufficientFounds
    }
    if outOfStock {
        throw VendingMachineError.outOfStock
    }
    print("Dispensing item...")
}

do {
    try vendItem()
} catch VendingMachineError.insufficientFounds {
    print("Insufficient funds.")
} catch VendingMachineError.outOfStock {
    print("Out of Stock.")
}
