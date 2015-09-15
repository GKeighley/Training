//
//  AnimalsLoader.swift
//  ImaginaryAnimalListener
//
//  Created by Sonia Mehta on 9/14/15.
//  Copyright © 2015 Sonia Mehta. All rights reserved.
//

import Foundation

struct AnimalsLoader {

    func loadAnimals() -> [ImaginaryAnimal] {
        let mermaid = ImaginaryAnimal(name: "Mermaid",
            height: 1.5,
            location: "Oceans",
            dateLastSeen: "1858",
            imageURL: NSURL(string: "https://upload.wikimedia.org/wikipedia/commons/2/2a/Waterhouse_a_mermaid.jpg"))
        
        let lochness = ImaginaryAnimal(name: "Loch Ness Monster", height: 31, location: "Scotland", dateLastSeen: "1951", imageURL: NSURL(string: "https://upload.wikimedia.org/wikipedia/commons/f/f4/Loch_Ness_Muppet.jpg"))
        
        let bigfoot = ImaginaryAnimal(name: "Bigfoot", height: 2.1, location: "North America", dateLastSeen: "1963", imageURL: nil)
        
        let ogopogo = ImaginaryAnimal(name: "Ogopogo", height: 3.2, location: "Okanagan Lake, Canada", dateLastSeen: "1987", imageURL: NSURL(string: "https://upload.wikimedia.org/wikipedia/commons/6/63/Ogo-Pogo%2C_The_Funny_Fox-Trot.jpg"))
        
        return [mermaid, lochness, bigfoot, ogopogo]

    }
}