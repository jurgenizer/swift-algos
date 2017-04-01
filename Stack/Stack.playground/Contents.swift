//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var name = "jurgen"

//Stack is a LIFO structure. Lets make it by putting a wrapper around an array
public struct Stack<T> {
    fileprivate var array = [T]()
    
    public var isEmpty: Bool {
        return array.isEmpty ///built in to Swift arrays
    }
    
    public var count: Int {
        return array.count
    }

    public mutating func push(_element: T){ //WTF is a mutating func?
        array.append(_element)
    }
    
    public mutating func pop() -> T? { //optional ?
        return array.popLast()
    }
    
    public var top: T? { //also optional
        return array.popLast()
    }

}

//let's push a number onto the stack
//stack.push(9)

//The stack is now [9]. Lets push 5 on

