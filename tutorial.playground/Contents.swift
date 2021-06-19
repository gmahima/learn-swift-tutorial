import UIKit

var greeting = "Hello, playground"
greeting = "yo"
var age = 38
var population  = 8_000_000

var str = """
    hey
    tger
    dgsf
"""
var str2 = """
    hasdf\
    asdf\
    asdf
"""
var pi = 3.14
var isGood = true

var stt3 = "yo hi there \(str) \(str2) \(pi)"
let taylor = "swift"

let album: String = "hey"
let year: Int = 2001
let awesoe: Bool = true
let height: Double = 1.2
let bts: [String] = ["knj", "ksj"]
let set : Set<String> = ["a", "b", "a"]
let tuple = (name: "izuku", age: 14, heroName: "deku")

print(tuple, tuple.age, tuple.1)

let primaryColors = Set(["red", "yellow", "blue", "blue"])
let address = (hno: 1, rno:2, colony:"awesome colony")
let fnames = ["rose", "lily", "rose"]

let tastes = [
    4: 1,
    1: 2,
    111: 3,
    
]
print(tastes[1, default: 0])
print(tastes[500, default: 0])

var results = [String: Int] ()
results["Me"] = 100
var names = [String] ()

var set1 = Set<String>()
var dict = Dictionary<String, Int>()

enum Result {
    case success
    case failure
}
var res = Result.success

enum Activity {
    case nothing
    case running (speed: Int, unit: String = "km/h")
    case talking (intensity: String, topic: String)
}
var bakugo = (act1: Activity.running(speed: 45), act2: Activity.talking(intensity: "loud", topic: "All Might"))

enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}
var earth = Planet(rawValue: 2)
var mercurey = Planet(rawValue: 1)
// enum witr raw vals cant have assocaiated vals
