enum Season :CaseIterable{
    case summer
    case monsoon
    case winter
}
let noOfSeasons = Season.allCases.count
var current = Season.summer

print(current)

current = .monsoon
print(current)

enum Alphabet {
    case a (String, String)
    case b (Int)
}
let l1 = Alphabet.a("First", "ofc")
let l2 = Alphabet.a("haha", "jk")
let l3 = Alphabet.b(3)

enum Bts :String{
    case KNJ = "RM"
    case KSJ = "Jin"
}

//let m1 = Bts(rawValue: "RM")
if let m1 = Bts(rawValue: "Jin") {
    print(m1, m1.rawValue)
}

indirect enum Exp{
    case num (Int)
    case add (Exp, Exp)
    case mul (Exp, Exp)
}
let four = Exp.num(4)
let five = Exp.num(5)
let prod = Exp.mul(four, five)

func eval (_ expression :Exp) -> Int {
    switch expression {
    case let .num(val) : return val
    case let .add(left,right): return eval(left) + eval(right)
    case let .mul(num1, num2): return eval(num1) * eval(num2)
    }
}
eval(prod)

