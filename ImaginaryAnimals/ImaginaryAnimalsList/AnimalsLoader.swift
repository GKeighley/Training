//
//  AnimalsLoader.swift
//  ImaginaryAnimalsList
//
//  Created by Brian Freese on 9/14/15.
//  Copyright © 2015 athenahealth. All rights reserved.
//

import Foundation

struct AnimalsLoader {
    func loadAnimals() -> [ImaginaryAnimal] {
        
        var animalArray = [ImaginaryAnimal]()
        
        guard let url = NSBundle.mainBundle().URLForResource("Animals", withExtension: "json"), let data = NSData(contentsOfURL: url), let jsonArray = try! NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0)) as? [AnyObject] else {
            return animalArray
        }
        
        if let jsonArray:[AnyObject] = jsonArray {
            for animalJSON in jsonArray {
                if let animal = ImaginaryAnimal(fromJSON: animalJSON) {
                    animalArray.append(animal)
                }
                
            }
        }
        return animalArray
    }
}