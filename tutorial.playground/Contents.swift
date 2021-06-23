import UIKit


//optional try
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

//do {
//    try checkPassword("password")
//    print("That password is good!")
//} catch {
//    print("You can't use that password. \(error)")
//}
if let res = try? checkPassword("password") {
    print("done. \(res)")
} else {
    print("you can't use that password")
}
let myBool = try! checkPassword("ultrasafepassword") // guess: try! is used when calling functions that can throw but you're sure that they are not going to throw.
myBool
