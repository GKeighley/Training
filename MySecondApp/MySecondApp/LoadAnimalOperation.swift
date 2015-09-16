//
//  LoadAnimalOperation.swift
//  MySecondApp
//
//  Created by Sonia Mehta on 9/16/15.
//  Copyright © 2015 Epocrates. All rights reserved.
//

import Foundation
import UIKit

class LoadAnimalOperation : NSOperation  {

    let animalUrl: NSURL?
    var imgData: NSData?
    
    init(animalUrl: NSURL) {
        self.animalUrl = animalUrl
    }
    
    override func main() {
   
        print(" main in LoadAnimalOperation")
            print("About to load URL \(self.animalUrl)")
            
           // NSOperationQueue.mainQueue().addOperationWithBlock { () -> Void in
                
        if let url = self.animalUrl {
            
            self.imgData = NSData(contentsOfURL: url)
        }
    }
    
}