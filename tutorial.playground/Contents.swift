import UIKit


//protocol extensions


var someArray : [String] = ["a", "a", "b"]

var someSet  : Set<String> = ["x", "y"]

extension Collection {
    func summarize () {
        print("there are \(count) of us")
        
        for i in self {
            print(i)
        }
    }
}

someSet.summarize()
someArray.summarize()
