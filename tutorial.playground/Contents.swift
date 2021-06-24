import UIKit


//type casting

class Animal {
    
}
class Fish: Animal {
    func swim() {
        print("splash splash")
    }
}
class Dog: Animal {
    func bark() {
        print("Woof!")
    }
}

let animals = [Fish(), Dog(), Dog(), Fish()]
let d = Dog() as Animal

for a in animals {
    print("type: \(type(of: a))")
    if let dog = a as? Dog {
        dog.bark()
        print(type(of: dog)) // converts type of animal to Dog (if possible)
    }
    else if let fish = a as? Fish {
        fish.swim()
    }
}
