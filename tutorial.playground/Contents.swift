import UIKit
//
//var greeting = "Hello, playground"
//greeting = "yo"
//var age = 38
//var population  = 8_000_000
//
//var str = """
//    hey
//    tger
//    dgsf
//"""
//var str2 = """
//    hasdf\
//    asdf\
//    asdf
//"""
//var pi = 3.14
//var isGood = true
//
//var stt3 = "yo hi there \(str) \(str2) \(pi)"
//let taylor = "swift"
//
//let album: String = "hey"
//let year: Int = 2001
//let awesoe: Bool = true
//let height: Double = 1.2
//let bts: [String] = ["knj", "ksj"]
//let set : Set<String> = ["a", "b", "a"]
//let tuple = (name: "izuku", age: 14, heroName: "deku")
//
//print(tuple, tuple.age, tuple.1)
//
//let primaryColors = Set(["red", "yellow", "blue", "blue"])
//let address = (hno: 1, rno:2, colony:"awesome colony")
//let fnames = ["rose", "lily", "rose"]
//
//let tastes = [
//    4: 1,
//    1: 2,
//    111: 3,
//
//]
//print(tastes[1, default: 0])
//print(tastes[500, default: 0])
//
//var results = [String: Int] ()
//results["Me"] = 100
//var names = [String] ()
//
//var set1 = Set<String>()
//var dict = Dictionary<String, Int>()
//
//enum Result {
//    case success
//    case failure
//}
//var res = Result.success
//
//enum Activity {
//    case nothing
//    case running (speed: Int, unit: String = "km/h")
//    case talking (intensity: String, topic: String)
//}
//var bakugo = (act1: Activity.running(speed: 45), act2: Activity.talking(intensity: "loud", topic: "All Might"))
//
//enum Planet: Int {
//    case mercury = 1
//    case venus
//    case earth
//    case mars
//}
//var earth = Planet(rawValue: 2)
//var mercurey = Planet(rawValue: 1)
//// enum witr raw vals cant have assocaiated vals
//
////let a = 2
////let b = 5.01
//////let c = a + b
////print( type(of:a))
////a == b
////a > b
////if(a+b > 2) {
////    print("eys")
////}
//if 1+2 == 3 {
//    print("yay")
//}
//var a = 5
//let b = 5
//
//switch a {
//case 5 :a += 1
//print("yo")
//fallthrough
//case 6 : print("a = 6")
//
//default: print("nothing")
//}
//a = 2
//switch a {
//case 0..<5:
//    print("a")
//    fallthrough
//
//case 0...2:
//    print("b")
//default:
//    print(2)
//}
//let r = [1, 2]
//
//for rock in r {
//    print(rock)
//}
//for _ in r {
//    print("wohoo")
//}
//for _ in 1..<3 {
//    print("yes")
//}
//let x = (a: 1, b: "asdf")
//print(x.0, x.b)
//
//while ( a<10 ) {
//    print(a)
//    a += 1
//}
//let arr = ["a", "b", "c", "d"]
//for a in 0..<arr.count {
//    print(arr[a])
//}
//
//repeat{
//    print("this is false")
//} while false
//
//outer: for i in 1...10 {
//    for j in 1...10 {
//        if((i*j) % 2) != 0 {
//            continue outer
////            continue
//        }
//        print ("\(i) x \(j) = \(i*j)")
//        if (i*j == 50) {
//            break outer
//        }
//
//
//    }
//    print("-----------")
//}
//print("-----------")
////while 1 {
////    print("test")
////    break
////}
//func printHelp () -> String {
////    print("ill help ya")
//    return "there"
//}
//printHelp()
//
//func sq (num: Int) -> Int {
//    return (num * num)
//}
//print(sq(num: 8))
//
//func sayHello(to name: String) {
//    print("hey \(name)")
//}
//sayHello(to: "Super")
//func sayHello2(_ name: String) {
//    print("hey \(name)")
//}
//sayHello2("Taylor")
//
//func greet (to name: String, saying greeting: String = "hello there") {
//    print ("\(greeting) \(name)!")
//}
//greet(to: "Taylor")
//greet(to: "Taylor", saying: "Nice to meet you")
//
//
//func myPrint (message: String...) throws {
//    for m in message {
//        print (m, terminator: " - ")
//    }
//}
//do {
//    try myPrint(message: "hello! didnt see you ",  printHelp(), "come on")
//}
//catch {
//    print("caut")
//}
//
//
//enum PasswordError : Error {
//    case obvious
//}
//func setPassword (_ p: String = "password") throws -> (){
//    if(p == "password") {
//        throw PasswordError.obvious
//    }
//}
//
//do {
//    try setPassword()
//    print ("p set")
//}
//catch {
//    print("set a better one")
//}
//
//func double ( _ num: inout Int) {
//    num = num * 2
//}
//var asdf = 2
//double (&asdf)
//asdf
//func some (_ a : Int = 1) -> Bool {
//    if(a == 1) {
//        return false
//    }
//    return true
//}
//
//let driving = {
//    (place: String) in
//    print("im driving \(place)")
//}
//driving("home")
//
//let dr = {
//    (place: String, bool: Bool) -> String in
//    return place
//}
//
//dr("somewhere", true)
//
//func travel (time: Int , action: (_: String, _: Bool) -> String) -> String {
//    print("yee haw, \(time)")
//    print(action("Hawaii", true))
//    return ("done")
//}
//travel(time:2, action: dr)
//
//travel (time: 300) {
//    (place: String, really: Bool) -> String in
//    return ("\(place) + yoyo + \(really)")
//}
//
//let done = travel(time: 4000) {
//    (place: String, isTrue: Bool) -> String in return ("\(place) + interesting + \(isTrue)")
//}

func travel (action: (String) -> String) -> String {
    let actRes = action("Hawaii")
    return "\(actRes) + wohoo lets go!"
}

travel {
    (place: String) -> String in return "shall we go to \(place) ? "
}

print(
    travel {
        (place) in return "iko ka \(place) e ? "
    }
)
print(
    travel {
        print("Korean")
        return "\($0) kapshida!"
    }
)
print(
    travel {
        "\($0) ki veldama? "
    }
)
//print(
//    travel {
//        "ki veldama? "
//    }
//) error
func travel2 (action: (Int, String) -> String) -> String {
    return "\(action(60, "Hawaii")) Yay!!"
}
travel2 {
    "We are going to \($1) at \($0)kmph"
}

func travel3 (speed: Int) -> (String) -> String {
    var who = 0
    return {
        who += 1
        return "\(who) are going to \($0) at \(speed)kmph"
    }
}

let closure = travel3(speed: 2)


let cloRes = closure("Hawaii") // closure is called here, but it still has access to speed, who which are defined in travel3, where the closure was defined! So functions have access to read,modify the values present in the scope they were defined in!!! In JS too!
closure("Tokyo")
travel3(speed: 400)("Taiwan")
travel3(speed: 1000)("Seoul")
travel3(speed: 1000)("Seoul")

// closure's lexical scope consists of the variables at the time of their declaration.
// at the time of declaration, who = 0. But if you store the closure in a var and call it multiple times, it's lex. scope will be the same. If you call the parent function, in the scope, who's val will be 1.
// each closure has the same function body, but different lexical environments.

func addX (x: Int) -> (Int) -> Int {
    return {
        (y: Int) -> Int in return x + y
    }
}

let add5 = addX(x: 5)
let add10 = addX(x: 10)
add5(5)
add10(25)


func visitPlaces() -> (String) -> Void {
    var places = [String: Int]()
    return {
        places[$0, default: 0] += 1
        let timesVisited = places[$0, default: 0]
        print("Number of times I've visited \($0): \(timesVisited).")
    }
}
let visit = visitPlaces()
visit("London")
visit("New York")
visit("London")

struct Sport {
    var name : String  = "cricket"
    var isOlympicSport: Bool = false
    var olympicStatus : String {
        if isOlympicSport {
            return "\(name) is an olympic sport"
        }
        return "\(name) is not an olympic sport"
    }
}

var tennis = Sport(name: "Tennis")
tennis.name
tennis.isOlympicSport
tennis.olympicStatus
tennis.name

struct Progress {
    var task: String = "lying around"
    var progress: Int = 0 {
        didSet (oldProgress) {
            print("progress of \(task) changed from \(oldProgress) to \(progress)")
        }
    }
}

var running = Progress(task: "running")

running.progress = 25
running.progress = 50
running.progress = 100

struct City {
    let name: String // if you give it a default value + let keyword, while creating an instance, you can't pass name as an argument. You can't modify it later either
    var population: Int
    func collectTaxes (currency: String) -> (amt: Int, currency: String) {
        return (population*1000, currency)
    }
}

var london = City(name: "London", population: 8_000_000)
london.name
london.collectTaxes(currency: "$")


struct Person {
    var name: String // cant use mutating func to change if let is used
    mutating func changeName (newName: String = "Anonymous") {
        name = newName
    }
}
var kimNamJoon = Person(name: "namjoon")
kimNamJoon.changeName(newName: "rm")
kimNamJoon.name
let jungKook = Person(name: "jk")
//jungKook.changeName(newName: "muscle bunny")
// error Cannot use mutating member on immutable value: 'jungKook' is a 'let' constant
var str = "Dr. Chakravarti"

str.hasPrefix("Dr.")
str.append("i")
var toys = ["Woody"]
toys.append("Buzz")
toys.count

struct User {
    var username: String
    var greeting: String
    
    mutating func setUsername (username: String) {
        self.username = username
    }
    init (customGreet greeting : String) {
        self.greeting = greeting
        username = "anonymous"
        greetUser()
    }
    func greetUser () -> Void {
        print("\(greeting) dear \(username)")
    }
    
}
var izuku = User(customGreet: "Ohio")
izuku.setUsername(username: "@deku")
izuku.greetUser()


struct Ft {
    init() {
        print("creating ft")
    }
}

struct Dude {
    var name: String
    lazy var tree = Ft()
    init(_ name: String) {
        self.name = name
    }
}
var ochako = Dude("ochako")
ochako.tree

struct Student {
    let name: String
    static let teacher: String = "Erazer Head"
    static var strength = 0
    init(_ name: String) {
        self.name = name
        Student.strength += 1
    }
}
var tokoyami = Student("tokoyami fumikage")
var asui = Student("asui")
Student.strength
Student.teacher

struct Cake {
    private let secretIngredient: String
    let name: String
    init (secretIngredient: String, name: String) {
        self.secretIngredient = secretIngredient
        self.name = name
    } //if you declaare something as private, you need to write a custom initializer, else it throws an error saying initializer inaccessible due to private protection level.
    func letOutSecret (_ name: String ) {
        if(name == self.name) {
            print("The secret ingredient is \(secretIngredient)")
        }
    }
}
let myCake = Cake(secretIngredient: "Jaggery", name: "Levi")

myCake.letOutSecret("Levi")
