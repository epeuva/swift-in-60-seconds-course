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
        
        // Variables
        var str = "Hello, playground"
        str = "Hello, updated playground"
        
        // TypeSafe language
        var age = 38
        var population = 8_000_000
        
        // Multi line strings
        var str1 = """
        this goes
        over multiple
        lines
        """
        
        var str2 = """
        this goes \
        over multiple \
        lines
        """
        
        NSLog(str1);
        NSLog(str2);
        
        // Doubles and booleans
        var pi = 3.141
        var awesome = true;
        
        // String interpolation
        var score = 85
        var str3 = "Your score was \(score)"
        var results = "The test results are here: \(str3)"
        
        // Constants
        let taylor = "swift"
        
        // Type annotations
        let album: String = "Reputation"
        let year: Int = 1989
        let height: Double = 1.78
        let taylorRocks: Bool = true
    }
}

