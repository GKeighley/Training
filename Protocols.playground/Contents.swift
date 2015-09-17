//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

protocol Ordered {
    func precedes (other:Self) -> Bool

}

struct Number : Ordered {
    var value : Double = 0
    func precedes(other: Number) -> Bool {
        return self.value < other.value
    }
}


func binarySearch<T:Ordered> (sortedKeys: [T], forKey k:T) -> Int {
    var lo = 0, hi = sortedKeys.count
    while hi > lo {
        let mid = lo + (hi - lo)/2
        if sortedKeys[mid].precedes(k) { lo = mid + 1 }
        else {hi = mid}
    }
}