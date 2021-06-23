import UIKit

//protocols
protocol Identifiable {
    var id: String {
        get set
        
    }
}


struct Person: Identifiable {
    var id: String
}

func displayID(thing: Identifiable) {
    print(thing.id)
}

var a = Person(id: "1234")
displayID(thing: a)

