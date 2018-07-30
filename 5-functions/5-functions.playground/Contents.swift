//: Playground - noun: a place where people can play

import UIKit

var title = "Writting functions"

// Functions
func printHelp() {
    let message = """
        Welcome to my App

        Run this app inside ...
    """
    
    print(message)
}

printHelp()

// Accepting parameters
print("hello, world")

func square(number: Int) {
    print(number * number)
}

square(number: 8)


// Returning values
func square2(number: Int) -> Int {
    return number * number
}

let result = square2(number: 8)
print(result)


// Parameter labels
func sayHello(to name: String) {
    print("Hello, \(name)!")
}

sayHello(to: "Epeuva")


// Omitting parameter labels
func greet(_ person: String) {
    print("Hello, \(person)!")
}

greet("Taylor")


// Default parameters
func greet2(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

greet2("Taylor")
greet2("Epeuva", nicely: false)


// Variadic functions (they accept any number of parameters of the same type)
print("Hatters", "gonna", "hate")

func square3(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

square3(numbers: 1, 2, 3, 4, 6, 10)


// Writing throwing functions
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}


// Running throwing functions
do {
    try checkPassword("password")
    print("That password is good")
} catch {
    print("You can't use that password")
}


// Inout parameters
func doubleInPlace(number: inout Int){
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)
print("My num is: \(myNum)")
