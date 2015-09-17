//
//  TableViewControllerTests.swift
//  MySecondApp
//
//  Created by Jeff Ishaq on 9/17/15.
//  Copyright © 2015 Epocrates. All rights reserved.
//

import XCTest
@testable import MySecondApp

class TableViewControllerTests: XCTestCase {
    
    var tableViewController:TableViewController?
    
    override func setUp() {
        super.setUp()
        
        tableViewController = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle()).instantiateViewControllerWithIdentifier("TableViewController") as? TableViewController
        
        tableViewController?.animalsArray = TestAnimalsLoader().loadAnimals()
    }
    
    func testNumberOfCellsEqualToNumberOfAnimals() {
        XCTAssert(tableViewController?.animalsArray.count > 0)
        XCTAssertEqual(tableViewController?.animalsArray.count, tableViewController?.tableView.numberOfRowsInSection(0))
    }
}
