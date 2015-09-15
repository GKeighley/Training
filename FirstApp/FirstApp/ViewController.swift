//
//  ViewController.swift
//  FirstApp
//
//  Created by Glenn Keighley on 9/14/15.
//  Copyright © 2015 Epocrates. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var headlinelabel: UILabel!
    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func textFieldDidBeginEditing(sender: UITextField) {
        sender.becomeFirstResponder()
    }
    
    @IBAction func textFieldDidEndEditing(sender: UITextField) {
        print("\(sender.text)")
    }
    @IBAction func buttonPressed(sender: AnyObject) {
        headlinelabel.text = "New Header"
        Label.text = "New Label"
        view.backgroundColor = UIColor.redColor()
    }
    
}

