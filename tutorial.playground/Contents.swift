import UIKit


//optionals

var age: Int? = nil
var str: String? = nil
str = "hey"
//if (let unwrapped = str) {
//    print(unwrapped.count)
//} errors

if let unwrapped = str {
    print(unwrapped.count)
} // if let is ||r to if(val != nil ) + optional binding facility inside.


