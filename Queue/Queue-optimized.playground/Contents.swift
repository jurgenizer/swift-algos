//: Playground - noun: a place where people can play

import UIKit

//This is a more efficient queue, becuse we reserve extra space at the front of the 
//array (and at the back)
//e.g. [xxx,xxx, "Jurgen", "R2D2", xxx, xxx]
//Then we trim empty spots in array like this ["Jurgen", "R2D2", xxx, xxx]
//Dequeing becomes O(1) (on average)

public struct Queue<T> {
    fileprivate var array = [T?]()//why fileprivate?
    fileprivate var head = 0
    
    public var isEmpty: Bool{
        return count == 0
    }
    
    public var count: Int{
        return array.count - head //that is this count  - head syntax?
    }
    
    
    public mutating func enqueue(_ element: T){
        array.append(element)
    }
    
    public mutating func dequeue()-> T?{
        guard head < array.count, let element = array[head] else { return nil}
        
        array[head] = nil
        head  += 1 //add 1 to the head
        
        let percentage = Double(head)/Double(array.count)
         if array.count > 50 && percentage > 0.25 { //why were these values chosen?
                 array.removeFirst(head)
            head = 0
        }
        
        return element
    }
    
    public var front: T? {
        if isEmpty{
            return nil
        } else{
            return array[head]
        }
    }

}


//Ok lets test it1


var q = Queue<String>()
q.array //Our empty array

//Enqueue a name or four
q.enqueue("Jurgen")
q.enqueue("R2D2")
q.enqueue("C3PO")
q.enqueue("Cat")
q.array // should be[{some,Jurgen"},{some,"R2D2"}, etc

q.count

q.dequeue() //eject Jurgen
q.array //becomes be[nil,{some,"R2D2"}, etc

q.count

q.dequeue()
q.array
q.count

q.enqueue("vader")
q.array



