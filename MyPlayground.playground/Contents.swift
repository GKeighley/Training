//: Playground - noun: a place where people can play

import UIKit

var foo = 5
let bar = 6

let frog = "Kermit"
let bool = true

//Explicit typing
var pig: String = "Miss Piggy"
let boolvalue: Bool = true

//Conditionals don't require parens
if boolvalue == true{
    print("Mupper show tonight, \(pig)")
//Printing out the literal requires extra escape
    print("Mupper show tonight, \\(pig)")
}


switch foo {
case 0:
    print("Animal")
case 1:
    print("Bunsen")

case _ where foo % 5 == 0:
    print("Math")
    fallthrough
default:
    print("Gonzo")
}

//Methods attach to class
//functions are global
func isOdd(number:Int) -> Bool {
    return number % 2 == 1
}

//optionals
var myName: String? = "Glenn Keighley"
//myName = nil;


class Rectangle {
    var width:Float = 0;
    var height:Float = 0;
    
    required init (width:Float, height:Float)
    {
        self.width = width
        self.height = height
    }
    
    func computeArea() -> Float {
        return width * height
    }
    
    var name:String { return "Rectangle"}
}
let r = Rectangle(width: 2, height: 3)

r.name
r.computeArea()
