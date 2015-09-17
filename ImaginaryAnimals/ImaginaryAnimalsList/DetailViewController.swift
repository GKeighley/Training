//
//  DetailViewController.swift
//  ImaginaryAnimalsList
//
//  Created by Brian Freese on 9/14/15.
//  Copyright © 2015 athenahealth. All rights reserved.
//

import UIKit

class DownloadOperation : NSOperation{
    var urlString:String
//    var imageData:NSData
    
    init(url:String) {
        urlString = url
        super.init()
    }
    
/*    override func main() {
        imageData = NSData(contentsOfURL: urlString)
    }
  */
}


class DetailViewController: UIViewController {

    var dataIndex: NSInteger = 0
    var animal: ImaginaryAnimal?
    var activityIndicator: UIActivityIndicatorView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var lastSeenLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
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
            activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.Gray)
            activityIndicator.center = self.view.center
            self.view.addSubview(activityIndicator)
            activityIndicator.startAnimating()
            
            //loadImageFromURL(url)
            let downloadOperation = NSBlockOperation(block:{() -> Void in
            if let imageData = NSData(contentsOfURL: url) {
                self.imageView.image = UIImage(data: imageData)
                }
            })
            
            
            //NSOperationQueue.currentQueue()?.addOperation(downloadOperation)
            let backgroundQueue = NSOperationQueue()
            backgroundQueue.qualityOfService = NSQualityOfService.UserInitiated
            backgroundQueue.addOperation(downloadOperation)
            
            
            

        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  /*
    func loadImageFromURL(url: NSURL) {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)) { () -> Void in
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                if let imageData = NSData(contentsOfURL: url) {
                    self.imageView.image = UIImage(data: imageData)
                }
                self.activityIndicator.stopAnimating()
            })
        }
    }
    */
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
