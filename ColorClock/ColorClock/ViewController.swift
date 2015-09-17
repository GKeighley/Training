//
//  ViewController.swift
//  ColorClock
//
//  Created by Glenn Keighley on 9/16/15.
//  Copyright © 2015 Epocrates. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timeLabel: UILabel!
    let date = NSDate()
    let dateFormatter = NSDateFormatter()
    var timer:NSTimer?
    let calendar = NSCalendar.currentCalendar()
    let flags = NSCalendarUnit.Hour.union(.Minute).union(.Second)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target:self, selector: "updateTime:", userInfo: nil, repeats: true)
        dateFormatter.locale = NSLocale(localeIdentifier: "en_GB")
        dateFormatter.dateStyle = .NoStyle
        dateFormatter.timeStyle = .MediumStyle
        
        
        self.timeLabel.text = dateFormatter.stringFromDate(date)
    }
    
    func updateTime(timer: NSTimer){
        let date = NSDate()
        timeLabel.text = dateFormatter.stringFromDate(date)
        let components = calendar.components(flags, fromDate: date)
        let hour = CGFloat(components.hour)
        let minutes = CGFloat(components.minute)
        let seconds = CGFloat(components.second)
        let color = UIColor(red:hour/24, green:minutes/60, blue: seconds/60, alpha: 1)
      
        UIView.animateWithDuration(1) { () -> Void in
            self.view.backgroundColor = color
        }
    }
    
}

