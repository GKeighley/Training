//: Playground - noun: a place where people can play

import UIKit
import Foundation

var str = "Hello, playground"

let myQueue = dispatch_queue_create("MyQueue", DISPATCH_QUEUE_SERIAL)

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

let reversed = names.sort(){ (s1: String, s2: String) -> Bool in
    return s1 > s2
}

let inferredReversed = names.sort()
{
    s1, s2 in
    return s1 > s2
}

