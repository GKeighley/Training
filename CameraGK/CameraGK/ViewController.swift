//
//  ViewController.swift
//  CameraGK
//
//  Created by Glenn Keighley on 9/16/15.
//  Copyright © 2015 Epocrates. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func captureButtonPressed(sender: AnyObject) {
        if(UIImagePickerController.isSourceTypeAvailable(.Camera)) {
            let imagePickerController = UIImagePickerController()
            imagePickerController.delegate = self
            imagePickerController.sourceType = .Camera;
            imagePickerController.allowsEditing = false
            
            self.presentViewController(imagePickerController, animated: false, completion:nil)
        }
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        self.dismissViewControllerAnimated(true) { () -> Void in}
        self.imageView.image = image

    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        self.dismissViewControllerAnimated(true, completion:{() -> Void in } )
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

