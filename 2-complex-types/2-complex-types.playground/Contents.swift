//: Playground - noun: a place where people can play

import UIKit

var str = "Complex types"

// Arrays
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]
NSLog(beatles[1])

// Sets (any order, unique items)
let colors = Set(["red", "green", "blue"])
let colors2 = Set(["red", "green", "blue", "red", "blue"]) // duplicates get ignored

// Set to array to string (Swift 4)
NSLog([String](colors2).joined(separator: ", "))

// Tuples
var name = (first: "Taylor", last: "Swift");
NSLog("First name (with 0) %@", name.0)
NSLog("First name (with first) %@", name.first)

// Arrays vs Sets vs Tuples
let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")
let set = Set(["aardvark", "astronaut", "azalea"])
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

// Dictionaries
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73,
    "test": 200
]

// Updated with force unwrapp !
print("(print) Taylor Swift heigth: ", heights["Taylor Swift"]!)

let height = heights["Taylor Swift"]!
NSLog("(first NSLog) Taylor Swift heigth: %@", height)

let height2 = heights["Taylor Swift"]!
NSLog("(second NSLog) Taylor Swift heigth: %@", height2)

// Enumerations
enum Result {
    case success
    case failure
}

let result = Result.failure

// Enum associated values
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")

// Enum raw values
// Swift will automatically assign numbers starting from 0
enum Planet: Int {
    case mercure
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 2)
