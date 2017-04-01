//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var name = "jurgen"

//Stack is a LIFO structure. Lets make it by putting a wrapper around an array
public struct Stack<T> {
    
    fileprivate var array = [T]()
    
    public var isEmpty: Bool {
        return array.isEmpty //built in to Swift arrays
    }
    
    public var count: Int {
        return array.count
    }

    public mutating func push(_ element: T){
        //WTF is a mutating func? Is it because it's changing the vaues?
        array.append(element)
    }
    
    public mutating func pop() -> T? { //optional ?
        return array.popLast()
    }
    
    public var top: T? {
        return array.last
    }

}

//extending the generic type
extension Stack: Sequence {
    public func makeIterator() -> AnyIterator<T> {
    var curr = self
        return AnyIterator {
            _ -> T? in
                return curr.pop()
        }
    }
}

/*
Now this is important, create a new Stack instance by writing the type to be stored in the stack within angle brackets
e.g Stack<string>():
 
 var stackOfStrings = Stack<String>()
 stackOfStrings.push("hello")
*/


//So lets make a new stack instance for Int

var stackOfInts = Stack<Int>()

//let's push a number onto the stack
stackOfInts.push(9)
//The stack is now [9]. Lets push 5 on
stackOfInts.push(5)

stackOfInts.push(100)

stackOfInts.push(45)

//The stack shouyld now be [9, 5, 100,45]

// let's check by popping the top number off the stack

stackOfInts.pop()

