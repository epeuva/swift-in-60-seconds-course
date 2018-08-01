//: Playground - noun: a place where people can play

import UIKit

var str = "Optionals"

// Handling missing data
var age: Int? = nil
age = 38


// Unwrapping optionals
var name: String? = nil
var name2: String? = "Epeuva"

// name.count() this will generate the following error:
// error: value of optional type 'String?' not unwrapped; did you mean to use '!' or '?'? name.count()

if let unwrapped = name {
    print("\(unwrapped) has \(unwrapped.count) letters")
} else {
    print("Missing name.")
}

if let unwrapped = name2 {
    print("\(unwrapped) has \(unwrapped.count) letters")
} else {
    print("Missing name.")
}


// Unwrapping with guard
func greet(name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }
    
    // Happy path. Name will be defined.
    print("Hello, \(unwrapped)!")
}

greet(name: nil)
greet(name: "Epeuva")


// Force unwrapping
let str2 = "5"
let num2 = Int(str2) // num2 is an optional Int
let num3 = Int(str2)! // num3 is a force unwrapped Int, thanks to "the crash operator"!


// Implicitly unwrapped optionals (! after type)
let age4: Int! = nil


// Nil coalescing
func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

let user = username(for: 15) ?? "Anonymous"
let user2 = username(for: 1) ?? "Anonymous"


// Optional chaining
let names = ["John", "Paul", "George", "Ringo"]
let beatle = names.first?.uppercased()


// Optional try
// -- required 5-functions code
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

do {
    try checkPassword("password")
    print("That password is good")
} catch {
    print("You can't use that password")
}
// -- required 5-functions code

if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}

if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}

try! checkPassword("Epeuva password") // If checkpassword returns nil, this will crash
print("OK!")


// Failable initializers
let str4 = "5"
let num4 = Int(str4) // num4 is an optional Int

struct Person {
    var id: String
    
    init?(id: String) { // Init returns nil if something went wrong
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}


// Typecasting
class Animal {}
class Fish: Animal {}
class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}

let pets = [Fish(), Dog(), Fish(), Dog()]
for pet in pets {
    if let dog = pet as? Dog { // Only Dogs have method to make noise
        dog.makeNoise()
    }
}
