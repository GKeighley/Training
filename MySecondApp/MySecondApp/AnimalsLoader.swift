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
        
        let tahoeTessie = ImaginaryAnimal(name:"Tahoe Tessie", height:4.5, location:"Lake Tahoe", dateLastSeen:"1948", imageURL:NSURL(string:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzMTNvupsi6x7kUBTTHmHKTIamX6YuvYWRPTgqEF7rz2IU-oUN"))
        
        return [mermaid, bigfoot, nessie, tahoeTessie]
    }
}