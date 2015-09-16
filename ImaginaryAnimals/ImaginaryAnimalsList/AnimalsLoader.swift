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
//        let mermaid = ImaginaryAnimal(name: "Mermaid",
//            height: 1.5,
//            location: "Oceans",
//            dateLastSeen: "1858",
//            imageURL: NSURL(string: "https://s-media-cache-ak0.pinimg.com/236x/ab/99/e5/ab99e5bf28b8a43835da6b4a3efe5c1c.jpg")
//        )
//        let werewolf = ImaginaryAnimal(name: "WereWolf",
//            height: 3.2,
//            location: "London",
//            dateLastSeen: "Full Moon Sept 2015",
//            imageURL: NSURL(string:"https://orig13.deviantart.net/5d38/f/2013/093/5/a/werewolf_by_sandara-d60cws0.jpg")
//        )
//        let dragon = ImaginaryAnimal(name: "Dragon",
//            height: 9.5,
//            location: "Sky, Caves",
//            dateLastSeen: "1532",
//            imageURL: NSURL(string: "https://orig06.deviantart.net/a78c/f/2014/110/8/1/dragon_3_by_vargasni-d7f8j8s.jpg")
//        )
//        let lorax = ImaginaryAnimal(name: "Lorax",
//            height: 1.5,
//            location: "Near Truffula Trees",
//            dateLastSeen: "March 2 2012",
//            imageURL: NSURL(string: "https://vignette1.wikia.nocookie.net/lorax/images/5/5d/The-lorax-400.png/revision/latest?cb=20131006121451")
//        )
        
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
        
//        return [mermaid, werewolf, dragon, lorax]
        return animalArray
    }
}