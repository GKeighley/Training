//
//  ViewController.swift
//  FizzBuzzGK
//
//  Created by Glenn Keighley on 9/17/15.
//  Copyright © 2015 Epocrates. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func stringForNumber(testValue:Int) -> String {
        if ((testValue % 3) == 0) && ((testValue % 5) == 0) {
            return "FizzBuzz"
        }
        else if ((testValue % 5) == 0){
            return "Buzz"
        }
        else if ((testValue % 3) == 0) {
            return "Fizz"
        }
        else {
            return ""
        }
        
        
        //for(int i = 0; i < 100; i++, System.out.println(i % 3 == 0 || i % 5 == 0 ? ((i % 3) == 0 ? "fizz" : "") + ((i % 5) == 0 ? "buzz" : "")  : i));
    }


}

