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
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Refresh labels with ImaginaryAnimal members:
        nameLabel.text          = animal?.name
        heightLabel.text        = animal?.height.description    // Cast fro float
        locationLabel.text      = animal?.location
        dateLastSeenLabel.text  = animal?.dateLastSeen

        loadImage()

        // Do any additional setup after loading the view.
    }
    
    func loadImage() {

        print("About to load URL \(self.animal?.imageURL)")
            
        NSOperationQueue.mainQueue().addOperationWithBlock { () -> Void in
            
            if let url = self.animal?.imageURL,
            let imageData = NSData(contentsOfURL: url) {
                
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    self.imageView.image = UIImage(data: imageData)
                })}
        }
    }
}
