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

struct Resolution {
    var width = 0
    var height = 0
}
class Video {
    var resolution = Resolution()
    var name :String?
}
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
func backward (_ a:String, _ b: String ) -> Bool {
    return a>b
}
//var rev = names.sorted(by: backward)
//var rev2 = names.sorted(by: {(_ a: String, _ b: String) -> Bool in return a>b})
//var rev3 = names.sorted(by: {a,b in print(a,b)
//                            return a>b
//})
//var rev4 = names.sorted(by: {
//    a,b in a>b
//})
//var rev5 = names.sorted(by: {
//    print($0)
//    return $0 > $1
//})
var rev6 = names.sorted(by: {
    $0>$1
})
var rev7 = names.sorted(by: >)
print(rev7)

func caller (closure : () -> Void) {
    print("calling closure")
    closure()
}

caller(closure: {
            print("no trail")
            })
caller() {
  () ->Void in  print("trail")
}
