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
    let who = "We"
    return {
        "\(who) are going to \($0) at \(speed)kmph"
    }
}

let closure = travel3(speed: 2)


let cloRes = closure("Hawaii") // closure is called here, but it still has access to speed, who which are defined in travel3, where the closure was defined! So functions have access to the values present in the scope they were defined in!!! In JS too!
print(cloRes)
