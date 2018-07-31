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



// Failable initializers



// Typecasting


