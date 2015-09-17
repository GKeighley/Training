//
//  URLImageView.swift
//  MySecondApp
//
//  Created by Jeff Ishaq on 9/17/15.
//  Copyright © 2015 Epocrates. All rights reserved.
//

import UIKit

class URLImageView: UIImageView {
    
    var url:NSURL? {
        didSet {
                let url = self.url
                let op = LoadAnimalOperation(animalUrl: url!)
                op.completionBlock =  ({
                    
                    NSOperationQueue.mainQueue().addOperationWithBlock{ () -> Void in
                        guard let image = UIImage(data: op.imgData!) else { return }
                        self.image = image
                    }
                })
                let operationQueue = NSOperationQueue.mainQueue()
                operationQueue.addOperation(op)
        }
    }
}
