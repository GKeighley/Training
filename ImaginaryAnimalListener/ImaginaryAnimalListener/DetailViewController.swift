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
        
        if let url = animal?.imageURL,
        let imageData = NSData(contentsOfURL: url) {
            self.imageView.image = UIImage(data: imageData)
            
        }
    }
}
