//
//  DetailViewController.swift
//  ImaginaryAnimalsList
//
//  Created by Brian Freese on 9/14/15.
//  Copyright © 2015 athenahealth. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var dataIndex: NSInteger = 0
    var animal: ImaginaryAnimal?
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var lastSeenLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
//    func setDataIndex(index: NSInteger) {
//        dataIndex = index
//        animal = AnimalsLoader().loadAnimals()[index]
////        super.init()
//    }
//    required init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameLabel.text = animal?.name
        self.heightLabel.text = "\(animal?.height)"
        if let animalHeight = animal?.height {
            self.heightLabel.text = "\(animalHeight)"
        }
        self.locationLabel.text = animal?.location
        self.lastSeenLabel.text = animal?.dateLastSeen
        
        if let url = animal?.imageURL{
           if let imageData = NSData(contentsOfURL: url) {
                self.imageView.image = UIImage(data: imageData)
                self.view.bringSubviewToFront(self.imageView)
            }

        }
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
