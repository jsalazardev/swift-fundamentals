import Cocoa

//: Enumerations

// Ejemplo 1
enum HttpError: String {
    case _400 = "Bad Request"
    case _401 = "Unauthorized"
    case _402 = "Payment Required"
    case _403 = "Forbidden"
    case _404 = "Not Found"
}

let error = HttpError._400.rawValue

// Ejemplo 2
enum Device {
    case iPod, iPad, iPhone
    var year : Int {
        switch self {
        case .iPod: return 2001
        case .iPhone: return 2007
        case .iPad: return 2010
        }
    }
}

let myDevice = Device.iPad.year

// Ejemplo 3

enum Longitude: Float{
    case m = 1
    case km = 1000
    func convert(distance value:Float, to: Longitude) -> Float{
        if self.rawValue < to.rawValue {
            return (self.rawValue / to.rawValue) * value
        }else{
            return (self.rawValue * to.rawValue) * value
        }
    }
}

print(Longitude.km.convert(distance: 5, to: Longitude.m))
print(Longitude.m.convert(distance: 700, to: Longitude.km))
