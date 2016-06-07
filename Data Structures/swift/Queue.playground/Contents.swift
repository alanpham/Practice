//: Playground - noun: a place where people can play

import Cocoa

private class QueueNode<T>{
    var data: T
    var next: QueueNode<T>?
    
    init(data: T){
        self.data = data
    }
}

public class Queue<T>{
    private var first: QueueNode<T>?
    private var last: QueueNode<T>?
    
    private var size: size_t
    
    public init(){
        size = 0
    }
    
    public func push(data: T){
        
    }
    
    public func pop() -> T?{
        return nil
    }
    
    public func peak() -> T?{
        return nil
    }
    
    public func isEmpty() -> Bool{
        return false
    }
    
    
    public func getSize() -> size_t{
        return 0
    }
}
