import UIKit


//guard let

enum Errror: Error {
    case nilError(message: String)
}

func greet (_ greeting: String?) throws -> String{
    guard let unwrapped = greeting else {
        print("couldn't find greeting. Have a great day")
        throw Errror.nilError(message: "couldn't find val in string")
    }
    return "\(unwrapped)! Have a great day"
}

do {
    try(greet(nil))
}
catch {
    print("some error occured \(error)")
}
