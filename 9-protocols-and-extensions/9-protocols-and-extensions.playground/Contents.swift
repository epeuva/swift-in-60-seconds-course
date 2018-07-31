//: Playground - noun: a place where people can play

import UIKit

var str = "Protocols and extensions"

// Protocols
// Protocols are a way of describing what properties and methods something must have
protocol Identifiable {
    var id: String { get set }
}

struct User: Identifiable {
    var id: String
    // without this, we will see: protocol requires property 'id' with type 'String'; do you want to add a stub?
    // var id: String { get set }
}

func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}


// Protocol inheritance
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


// Extensions
extension Int {
    func squared() -> Int {
        return self * self
    }
    
    var isEven: Bool {
        return self % 2 == 0
    }
}

let number = 8
number.squared()
number.isEven


// Protocol extensions
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")
        
        for name in self {
            print(name)
        }
    }
}

pythons.summarize()
beatles.summarize()


// Protocol-oriented programming
protocol Identifiable2 {
    var id: String { get set }
    func identify2()
}

extension Identifiable2 {
    func identify2() {
        print("My ID is \(id).")
    }
}

struct User2: Identifiable2 {
    var id: String
}

let twostraws = User2(id: "twostraws")
twostraws.identify2()


