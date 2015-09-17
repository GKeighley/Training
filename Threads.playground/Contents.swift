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

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)

incrementByTen()
// returns a value of 10
incrementByTen()
// returns a value of 20
incrementByTen()