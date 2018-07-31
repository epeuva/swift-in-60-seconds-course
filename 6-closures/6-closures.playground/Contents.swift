//: Playground - noun: a place where people can play

import UIKit

var str = "Closures"


// Creating basic closures
let driving = {
    print("I'm driving in my car")
}

driving()


// Accepted parameters
let driving2 = { (place: String) in
    print("I'm going to \(place) in my car")
}

driving2("London")


// Returning values
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("France")
print(message)


// Closures as parameters
func travel( action: () -> Void) {
    print("I'm getting ready to go")
    action()
    print("I'm arrived!")
}

travel(action: driving)


// Trailing closure syntax
func travel2( action: () -> Void) {
    print("I'm getting ready to go 2")
    action()
    print("I'm arrived! 2")
}

travel {
    print("I'm driving in my car")
}

// Using closures as parameters when they accept parameters
func travel3( action: (String) -> Void) {
    print("I'm getting ready to go 3")
    action("London")
    print("I'm arrived! 3")
}

travel3 { (place: String) in
    print("I'm going to \(place) in my car")
}


// Using closures as parameters when they return values
func travel4( action: (String) -> String) {
    print("I'm getting ready to go 4")
    let description = action("London")
    print(description)
    print("I'm arrived! 4")
}

travel4 { (place: String) -> String in
    return "I'm going to \(place) in my car"
}


// Shorthand parameter names
func travel5( action: (String) -> String) {
    print("I'm getting ready to go 5")
    let description = action("London")
    print(description)
    print("I'm arrived! 5")
}

travel5 {
    "I'm going to \($0) in my car"
}


// Clousures with multiple parameters
func travel6(action: (String, Int) -> String) {
    print("I'm getting ready to go 6")
    let description = action("London", 60)
    print(description)
    print("I'm arrived! 6")
}

travel6 {
    "I'm going to \($0) at \($1) miles per hour"
}


// Returning closures from functions
func travel7() -> (String) -> Void {
    return {
        print("I'm going to \($0) 7")
    }
}

let result7 = travel7()
result7("London")

let result7b = travel7()("London")


// Capturing values
func travel8() -> (String) -> Void {
    var counter = 1
    return {
        print("\(counter) - I'm going to \($0) 8")
        counter += 1
    }
}

let result8 = travel8()
result8("London")
result8("London")
result8("London")
result8("London")





