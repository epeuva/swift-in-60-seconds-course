//: Playground - noun: a place where people can play

import UIKit

var str = "Classes"

// Creating your own classes
// First difference (versus Struts). You need your own initializer to init all the properties
class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    
    func makeNoise() {
        print("Woof!")
    }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")


// Class inheritance
// Second difference (versus Struts). Class inheritance
class Pooddle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}


// Overriding methods
class Collie: Dog {
    init(name: String) {
        super.init(name: name, breed: "Collie")
    }
    
    override func makeNoise() {
        print("Yip!")
    }
}


// Final classes (no other class can inherit from it)
final class Cat {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func makeNoise() {
        print("Mew!")
    }
}


// Copying objects
// Third difference (versus Struts).Copying structs both the original and copy are different things. When copying class both are the same thing.
class Singer {
    var name = "Taylor Swift"
}

struct SingerStruct {
    var name = "Taylor Swift"
}

// Class example
var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin"
print(singer.name) // Will see Justin

// Struct example
var singerStruct = Singer()
print(singerStruct.name)

var singerStructCopy = singerStruct
singerStructCopy.name = "Justin"
print(singerStruct.name) // Will see Taylor Swift


// Deinitializers
// Forth difference (versus Structs). Code that gets run when the instance of the class gets destroyed
class Person {
    var name = "John Doe"
    
    init() {
        print("\(name) is alive!")
    }
    
    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit {
        print("\(name) is no more")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

// Mutability
// Fifth difference (versus Structs). constant cannot be modified (constant is let, remember)
class Singer2 {
    let name = "Taylor Swift"
}

let taylor = Singer2()
// taylor.name = "Ed Sheeran" // Cannot assign to property: 'name' is a 'let' constant
print(taylor.name)


