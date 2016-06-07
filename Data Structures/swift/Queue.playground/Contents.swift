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
    
    public init(){
        
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
    
    
}
