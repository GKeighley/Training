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
        
        let mermaid = ImaginaryAnimal(name:"Mermaid", height:1.5, location:"Oceans", dateLastSeen:"1894",
            imageURL:NSURL(string:"https://en.wikipedia.org/wiki/Mermaid#/media/File:John_William_Waterhouse_A_Mermaid.jpg"))
        
        let nessie = ImaginaryAnimal(name:"Nessie", height:1.5, location:"Oceans", dateLastSeen:"1894",
            imageURL:NSURL(string:"https://en.wikipedia.org/wiki/Nessie"))
        
        let bigfoot = ImaginaryAnimal(name:"Bigfoot", height:1.5, location:"Oceans", dateLastSeen:"1894",
            imageURL:NSURL(string:"https://en.wikipedia.org/wiki/Bigfoot"))
        
        return [mermaid, bigfoot, nessie]
    }
}