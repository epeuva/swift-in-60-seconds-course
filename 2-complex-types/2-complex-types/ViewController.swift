//
//  ViewController.swift
//  
//
//  Created by epeuva on 30/07/2018
//  Copyright © 2018 epeuva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
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

        // TODO: This is not fully working. Review at optional chapter
        print("(print) Taylor Swift heigth: ", heights["Taylor Swift"])
        
        // TODO: This is not fully working. Review at optional chapter
        let height = heights["Taylor Swift"]! // Force unwrap of optional value
        NSLog("(first NSLog) Taylor Swift heigth: %@", height)
        
        // TODO: This is not fully working. Review at optional chapter
        let height2 = heights["Taylor Swift"] ?? 0.0 // Force unwrap of optional value
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
        
        
    }
}

