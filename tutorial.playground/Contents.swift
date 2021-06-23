import UIKit


//nil coalesing

func user (_ id: Int) -> String? {
    if(id == 1) {
        return "Yaoyorozu"
    }
    else {
        return nil
    }
}
let x = user(24) ??  "Anonymous"
let y = user(1) ?? "Anonymous"

