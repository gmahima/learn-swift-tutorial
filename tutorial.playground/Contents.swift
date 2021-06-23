import UIKit


//implicit unwrap

var x : Int!
x = 5
print(x) // optional(5) with warning: Coercion of implicitly unwrappable value of type 'Int?' to 'Any' does not unwrap optional
let y = 5 + x
print(y) // 10
