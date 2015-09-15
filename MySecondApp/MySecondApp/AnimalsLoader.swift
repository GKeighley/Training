//
//  AnimalsLoader.swift
//  MySecondApp
//
//  Created by Glenn Keighley on 9/14/15.
//  Copyright © 2015 Epocrates. All rights reserved.
//

import Foundation

struct AnimalsLoader {
    func loadAnimals() -> [ImaginaryAnimal]{
        
        var animalsArray = [ImaginaryAnimal]()
        
        guard let url = NSBundle.mainBundle().URLForResource("Animals", withExtension: "json"),
            let data = NSData(contentsOfURL: url),
            let jsonArray = try? NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0)) as? [AnyObject] else {
               return animalsArray
        }
    
        
        if let jsonArray:[AnyObject] = jsonArray {
            for animalJson in jsonArray {
                
                if let animal = ImaginaryAnimal(fromJSON: animalJson){
                    animalsArray.append(animal)
                }
        
            }
        }
       return animalsArray
    }

}