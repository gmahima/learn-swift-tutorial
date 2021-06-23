import UIKit

//protocols
protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation {}

struct StartupEmployee : Employee {
    var salary: Int = 1000
    func calculateWages() -> Int {
        return 30*salary
    }
    func study() {
        print("study study study")
    }
    func takeVacation(days: Int) {
        print("Yay! I can relax for \(days) days.")
    }
}

var tatsumaki = StartupEmployee(salary: 10_000_000)

tatsumaki.calculateWages()
tatsumaki.study()
tatsumaki.takeVacation(days: 500)
