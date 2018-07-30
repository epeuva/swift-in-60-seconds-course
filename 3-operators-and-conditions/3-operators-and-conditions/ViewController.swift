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
        
        // Arithmetic operators
        let firstScore = 12
        let secondScore = 4
        
        let total = firstScore + secondScore
        let difference = firstScore - secondScore
        
        let product = firstScore * secondScore
        let divided = firstScore / secondScore
        
        let remainded = 13 % secondScore
        
        
        // Operator overloading
        let meaningOfLife = 42
        let doubleMeaning = 42 + 42
        
        let fakers = "Fakers gonna "
        let action = fakers + "fake"
        
        print("\(action)")
        
        let firstHalf = ["John", "Paul"]
        let secondHalf = ["George", "Ringo"]
        let beatles = firstHalf + secondHalf
        
        print("beatles: \(beatles)")
        
        // Compoud Operators
        var score = 95
        score -= 95
        
        var quote = "The rain in Spain falls mainly on the "
        quote += "Spaniards"
        
        print("quote: \(quote)")
        
        
        // Comparison operators
        let firstScore_b = 6
        let secondScore_b = 4
        
        let result1 = firstScore_b == secondScore_b
        let result2 = firstScore_b != secondScore_b
        let result3 = firstScore_b < secondScore_b
        let result4 = firstScore_b <= secondScore_b
        let result5 = "Taylor" <= "Swift"
        
        print("result1: \(result1)")
        print("result2: \(result2)")
        print("result3: \(result3)")
        print("result4: \(result4)")
        print("result5: \(result5)")
        
        
        // Conditions
        let firstCard = 11
        let secondCard = 10
        
        if firstCard + secondCard == 2 {
            print("Aces a lucky!")
        } else if firstCard + secondCard == 21 {
            print("Blackjack")
        } else {
            print("Regular cards")
        }
        
        
        // The ternary operator
        let firstCard_b = 11
        let secondCard_b = 10
        
        print(firstCard_b == secondScore_b ? "Cards are the same" : "Cards are different")
        
        
        // Switch case
        let weather = "rain"
        
        switch weather {
        case "rain":
            print("Bring an umbrella")
        case "snow":
            print("Wrap up warm")
        case "sunny":
            print("Wear sunscreen")
            fallthrough // Execution continues to the next case
        default:
            print("Enjoy your day")
        }
        
        
        // Range operators
        let score2 = 82
        switch score2 {
        case 0..<50:
            print("You failed badly.")
        case 50..<85:
            print("You did OK.")
        default:
            print("You did great!")
        }
    }
}

