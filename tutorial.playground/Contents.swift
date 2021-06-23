import UIKit


//protocol extensions protocol oriented programming

protocol Identifiable {
    var id: String {get set}
    func checkId(id: String) -> Bool
    // it works even if checkId isn't mentioned here, but it acts as a constraint saying this method is compulsary.
}

extension Identifiable {
    func checkId (id: String) -> Bool{
        return id==self.id ? true : false
    }
} //it implements the checkId func here

struct User: Identifiable {
    var id: String
}

var someone = User(id: "1234")
someone.checkId(id: "1234")
