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
        if let url = animal?.imageURL,
            let imageData = NSData(contentsOfURL: url) {
                self.imageView.image = UIImage(data:imageData)
        }
        
        // Refresh labels with ImaginaryAnimal members:
        nameLabel.text          = animal?.name
        heightLabel.text        = animal?.height.description    // Cast fro float
        locationLabel.text      = animal?.location
        dateLastSeenLabel.text  = animal?.dateLastSeen
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
