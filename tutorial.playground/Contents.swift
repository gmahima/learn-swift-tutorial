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
let arr = ["a", "b", "c", "d"]
for a in 0..<arr.count {
    print(arr[a])
}

repeat{
    print("this is false")
} while false

outer: for i in 1...10 {
    for j in 1...10 {
        if((i*j) % 2) != 0 {
            continue outer
//            continue
        }
        print ("\(i) x \(j) = \(i*j)")
        if (i*j == 50) {
            break outer
        }
        
        
    }
    print("-----------")
}
print("-----------")
