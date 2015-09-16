//
//  DetailViewController.swift
//  ImaginaryAnimalListener
//
//  Created by Sonia Mehta on 9/14/15.
//  Copyright © 2015 Sonia Mehta. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var animal: ImaginaryAnimal?
    @IBOutlet weak var lastSeenByLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.NameLabel.text = animal?.name
        self.locationLabel.text = animal?.location
        //self.heightLabel.text = animal?.height.description
        self.heightLabel.text = "\(animal?.height)"
        self.lastSeenByLabel.text = animal?.dateLastSeen

    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        loadImage()
    }
    
    func loadImage() {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)){
            () -> Void in
            if let url = self.animal?.imageURL,
                let imageData = NSData(contentsOfURL: url) {
                    dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    self.imageView.image = UIImage(data: imageData)
                })
            }
        }
    }
}
