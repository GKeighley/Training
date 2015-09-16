//
//  ImaginaryAnimal.swift
//  ImaginaryAnimalsList
//
//  Created by Brian Freese on 9/14/15.
//  Copyright © 2015 athenahealth. All rights reserved.
//

import Foundation


struct ImaginaryAnimal {
    var name: String
    var height: Float
    var location: String
    var dateLastSeen: String
    var imageURL: NSURL?
    
    init?(fromJSON json:AnyObject) {
        name = json["name"] as! String
        height = json["height"] as! Float
        location = json["location"] as! String
        dateLastSeen = json["dateLastSeen"] as! String
        
        if let imageURLString = json["imageURL"] as? String {
            imageURL = NSURL(string: imageURLString)
        }
    }
}