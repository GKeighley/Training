//
//  FizzBuzzGKTests.swift
//  FizzBuzzGKTests
//
//  Created by Glenn Keighley on 9/17/15.
//  Copyright © 2015 Epocrates. All rights reserved.
//

import XCTest
@testable import FizzBuzzGK

class FizzBuzzGKTests: XCTestCase {
    
    var viewController: ViewController?
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
         viewController = ViewController(nibName: nil, bundle: nil)

    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        
        
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let emptyString = viewController?.stringForNumber(1);
        XCTAssert(emptyString?.compare("").rawValue == 0)
        
        let fizzBuzz = viewController?.stringForNumber(15)
        XCTAssert(fizzBuzz?.compare("FizzBuzz").rawValue == 0)
        
        let fizz = viewController?.stringForNumber(3)
        XCTAssert(fizz?.compare("Fizz").rawValue == 0)
        
        let buzz = viewController?.stringForNumber(5)
        XCTAssert(buzz?.compare("Buzz").rawValue == 0)
        
        
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
