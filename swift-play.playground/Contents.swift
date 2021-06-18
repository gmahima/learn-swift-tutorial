//enum Season :CaseIterable{
//    case summer
//    case monsoon
//    case winter
//}
//let noOfSeasons = Season.allCases.count
//var current = Season.summer
//
//print(current)
//
//current = .monsoon
//print(current)
//
//enum Alphabet {
//    case a (String, String)
//    case b (Int)
//}
//let l1 = Alphabet.a("First", "ofc")
//let l2 = Alphabet.a("haha", "jk")
//let l3 = Alphabet.b(3)
//
//enum Bts :String{
//    case KNJ = "RM"
//    case KSJ = "Jin"
//}
//
////let m1 = Bts(rawValue: "RM")
//if let m1 = Bts(rawValue: "Jin") {
//    print(m1, m1.rawValue)
//}
//
//indirect enum Exp{
//    case num (Int)
//    case add (Exp, Exp)
//    case mul (Exp, Exp)
//}
//let four = Exp.num(4)
//let five = Exp.num(5)
//let prod = Exp.mul(four, five)
//
//func eval (_ expression :Exp) -> Int {
//    switch expression {
//    case let .num(val) : return val
//    case let .add(left,right): return eval(left) + eval(right)
//    case let .mul(num1, num2): return eval(num1) * eval(num2)
//    }
//}
//eval(prod)
//
//
//struct Resolution {
//    var width = 0
//    var height = 0
//}
//class Video {
//    var resolution = Resolution()
//    var name :String?
//}
//let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
//func backward (_ a:String, _ b: String ) -> Bool {
//    return a>b
//}
////var rev = names.sorted(by: backward)
////var rev2 = names.sorted(by: {(_ a: String, _ b: String) -> Bool in return a>b})
////var rev3 = names.sorted(by: {a,b in print(a,b)
////                            return a>b
////})
////var rev4 = names.sorted(by: {
////    a,b in a>b
////})
////var rev5 = names.sorted(by: {
////    print($0)
////    return $0 > $1
////})
//var rev6 = names.sorted(by: {
//    $0>$1
//})
//var rev7 = names.sorted(by: >)
//print(rev7)
//
//func caller (closure : () -> Void) {
//    print("calling closure")
//    closure()
//}
//
//caller(closure: {
//            print("no trail")
//            })
//caller() {
//  () ->Void in  print("trail")
//}
//struct Point {
//    var x = 0.0,y = 0.0
//}
//struct Size {
//    var width = 0.0, height = 0.0
//}
//
//struct Rect {
//    var origin = Point()
//    var size = Size()
//    var center: Point {
//        get {
//            let centerX = origin.x + (size.width / 2)
//            let centerY = origin.y + (size.height / 2)
//            return Point(x: centerX, y: centerY)
//        }
//        set (newCenter) {
//            origin.x = newCenter.x - (size.width / 2)
//            origin.y = newCenter.y - (size.height / 2)
//        }
//    }
//}
//var square = Rect(origin: Point(x: 0.00, y:0.00), size: Size(width: 4.00, height: 4.00))
//square.center = Point(x: 5, y: 0)
//print(square.center, square.origin)
//
//struct Cuboid {
//    var l = 0.00,b = 0.00,h = 0.00
//    var volume : Double {
//        l*b*h
//    }
//}
//let a = Cuboid(l:4, b:5, h:6)
//print(a.volume)
//struct StepCounter {
//    var steps :Int = 0 {
//        willSet (newSteps) {
//            print("about to set steps to \(newSteps)")
//        }
//        didSet (oldSteps) {
//            print ("added \(steps - oldSteps)")
//        }
//    }
//}
//var stepCounter = StepCounter()
//stepCounter.steps += 1;
//stepCounter.steps += 100;
//
//@propertyWrapper
//struct SmallNo {
//    private var num: Int
//    private var max: Int
//
//    var wrappedValue: Int {
//        get {return num}
//        set {
//            num = min(newValue, max)
//        }
//    }
//    init () {
//        max = 12
//        num = 0
//    }
//    init (_ a:Int, _ b: Int) {
//        self.max = a
//        self.num = min(b, max)
//    }
//}
//struct Rect1 {
//    @SmallNo (12, 1) var l: Int = 10
//    @SmallNo (100, 1) var b: Int = 3
//
//}
//let r = Rect1(l : 120,b : 100)
//print(r.l, r.b)
//struct MixedRectangle {
//    @SmallNo var height: Int = 1
//}
@propertyWrapper
struct TwelveOrLess {
    private var number = 0
    var wrappedValue: Int {
        get { return number }
        set { number = min(newValue, 12) }
    }
}
@propertyWrapper
struct SmallNumber {
    private var maximum: Int
    private var number: Int

    var wrappedValue: Int {
        get { return number }
        set { number = min(newValue, maximum) }
    }

    init() {
        maximum = 12
        number = 0
    }
    init(wrappedValue: Int) {
        maximum = 12
        number = min(wrappedValue, maximum)
    }
    init(wrappedValue: Int, maximum: Int) {
        self.maximum = maximum
        number = min(wrappedValue, maximum)
    }
}
//struct SmallRectangle {
//    @SmallNumber(wrappedValue: 400, maximum: 2) var height: Int = 7
//    @SmallNumber(10, 2) var width: Int = 7
//}

//var rectangle = SmallRectangle()
//print(rectangle.height)
//// Prints "0"
//
//rectangle.height = 10
//print(rectangle.height)
//// Prints "10"
//
//rectangle.height = 24
//print(rectangle.height)
//// Prints "12"
struct MixedRectangle {
    @SmallNumber var height: Int = 1
    @SmallNumber(maximum: 9) var width: Int = 2
}

var mixedRectangle = MixedRectangle()
print(mixedRectangle.height)
// Prints "1"

mixedRectangle.height = 20
print(mixedRectangle.height)
// Prints "12"

protocol FullyNamed {
    var fullName: String {
        get
    }
}
struct Person: FullyNamed {
    var fullName: String
}
let john = Person(fullName: "john")
print(john.fullName)

class StarShip : FullyNamed {
    var prefix : String?
    var name : String
    init (name: String, prefix: String? = nil) {
        self.name = name
        self.prefix = prefix
    }
    var fullName: String {
        get {
            return (prefix != nil ? prefix! + " " : "" ) + name
        }
    }
}
var s = StarShip(name: "GoodOne",prefix: "Dr." )
print(s.fullName)

func Swap <T> (_ a :inout T , _ b : inout T) {
    let temp = a;
    a = b;
    b = temp
}
var x = 5
var y = 2
var a = "asdf"
var b = "jkl;"
Swap(&x, &y)
Swap(&a, &b)
print(a,b,x,y)
