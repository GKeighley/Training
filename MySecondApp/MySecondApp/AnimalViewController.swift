//
//  AnimalViewController.swift
//  MySecondApp
//
//  Created by Glenn Keighley on 9/14/15.
//  Copyright © 2015 Epocrates. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {

    var animal: ImaginaryAnimal? 
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var dateLastSeenLabel: UILabel!
    @IBOutlet weak var imageView: URLImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Refresh labels with ImaginaryAnimal members:
        nameLabel.text          = animal?.name
        heightLabel.text        = animal?.height.description    // Cast fro float
        locationLabel.text      = animal?.location
        dateLastSeenLabel.text  = animal?.dateLastSeen
        
        imageView.url = animal?.imageURL

//        loadImage()

        // Do any additional setup after loading the view.
    }
 
    func loadImage() {
        
//        if let url = self.animal?.imageURL {
//            let op = LoadAnimalOperation(animalUrl: url)
//            op.completionBlock =  ({
//                
//                NSOperationQueue.mainQueue().addOperationWithBlock{ () -> Void in
//                    self.imageView.image = UIImage(data: op.imgData!)
//                }
//                
//            })
//            let operationQueue = NSOperationQueue.mainQueue()
//            operationQueue.addOperation(op)
//        }
    }
}
