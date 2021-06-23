import UIKit


//optional chaining

var team7 = ["naruto", "sakura", "sasuke", "kakashi"]

var first = team7.first?.uppercased()
print(first) // Optional("NARUTO")

var team700 = Array<String>()

var first700 = team700.first?.uppercased()
print(first700) // (nil)

var inoShikaCho = ["Ino", "Shikamaru", "Chouji"]

//var firIsc = inoShikaCho.first?.uppercased()
//guard let firIsc = inoShikaCho.first?.uppercased() else {
//
//}
//print(firstIsc) error can't find firstIsc in scope.

var capIno:String = ""
if let firIsc = inoShikaCho.first?.uppercased() {
    capIno = firIsc
}
print(capIno)
