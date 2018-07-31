//: Playground - noun: a place where people can play

import UIKit

var str = "Structs"

// Creating your own structs
struct Sport {
    var name: String
}

var tennis = Sport(name: "Tennis")
print(tennis.name)

tennis.name = "Lawn tennis"


// Computed properties
struct Sport2 {
    var name: String
    var isOlympicSport: Bool
    
    var olympicStatus : String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

let chessBoxing = Sport2(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)


// Property observers
struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)

progress.amount = 30
progress.amount = 80
progress.amount = 100


// Methods
struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}

let london = City(population: 9_000_000)
london.collectTaxes()


// Mutating methods
struct Person {
    var name: String
    
    // when you need to change a property inside a method, mutating is mandatory
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
    
}

var person = Person(name: "Ed")
person.makeAnonymous();


// Properties and methods of strings (string are structs)
let string = "Do or do not, there is no try"
print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())


// Initializers (special methods to create the Struct)
struct User {
    var username: String
    
    init() { // Make sure all property have a value before the initializer ends
        username = "Anonymous"
        print("Creating a new user")
    }
}

var user = User()
user.username = "twostraws"


// Referring to the current instance
struct Person2 {
    var name: String
    
    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

var person2 = Person2(name: "epeuva")


// Lazy properties
struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Person3 {
    var name: String
    // See the log diference with lazy and without, and commenting the line that has "ed.familtyTree"
    lazy var familtyTree = FamilyTree()
    
    init(name: String) {
        self.name = name
        print("Person3 name \(name)")
        
    }
}

var ed = Person3(name: "Ed")
ed.familtyTree


// Static properties and methods
struct Student {
    static var classSize = 0 // Shared among all instances of struct Student
    var name: String
    
    init(name: String){
        self.name = name
        Student.classSize += 1
    }
}

let ed2 = Student(name: "Ed")
let taylor2 = Student(name : "Taylor")

print(Student.classSize)


// Access control
struct Person4 {
    private var id: String // See private
    
    init(id: String) {
        self.id = id
    }
    
    func identify() -> String {
        return "My social security number is \(id)"
    }
}

let ed4 = Person4(id: "12345")
ed4.identify()
// ed4.id //Inaccesible due to private





