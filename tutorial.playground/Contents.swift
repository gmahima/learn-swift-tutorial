import UIKit


// extensions

extension Int {
    var isEven: Bool {
        get {
            if(self%2 == 0){
                return true
            }
            return false
        }
    }
    func square () -> Int {
        return self*self
    }
}

var a = 1

a.square()

//a.isEven = false //Cannot assign to property: 'isEven' is a get-only property
print(a.isEven)
