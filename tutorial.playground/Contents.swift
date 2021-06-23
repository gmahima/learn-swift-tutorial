import UIKit


//failable initializer

struct Person {
    var id :String
    
    init? (id: String) {
        if(id.count == 9) {
            self.id = id
        }
        else {
            return nil
        }
    }
}

var a = Person(id: "asdf")
var ax = Person(id: "123456789")
