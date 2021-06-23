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

for a in animals {
    if let dog = a as? Dog {
        dog.bark()
    }
    else if let fish = a as? Fish {
        fish.swim()
    }
}
