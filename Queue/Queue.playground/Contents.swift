//: Playground - noun: a place where people can play


// A queue is like a stack but FIFO instead of LIFO

import UIKit

//simple implementation of a queue in Swift

//the generic data type thing T
public struct Queue<T> {
    fileprivete var array = [T]()

public var isEmpty: Bool {
    return array.isEmpty
}


public var count: Int {
    return array.count
}

public mutating func enqueue(_ element: T){
    array.append(element)
}


public mutating func dequeue() ->T? {
    if isEmpty {
        return nil
    } else {
        return array.removeFirst()
    }
}

public var front: T? {
    return array.first
    }
}

//Note: appending items to the end of a queue always takes the same time
//It is an O(1) operation (constant-time operation)
//This is because an array in Swift alays has some empty spaces at the end
// e.g. [ "Jurgen" , "R2D2", "C3PO", xxx, xxx, xxx]
//xxx represents memeory that is reseved but not holding an array element yet
//BUT
//when when the aray is full and needs to be resized to make space for a new element, new memory needs to be
//allocated and the existing data needs to be copyied to the new array. Because this doesn't happen too often
//the time for appending to the end of the array is still O(1) on average, (O(1)amortized).

//Dequeing is more exensive O(n) because all remaining elements in the aray need to be shifted forward one space



