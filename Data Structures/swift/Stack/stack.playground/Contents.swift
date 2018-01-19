/*
  Last in First out stack implementation
 */

// Stack

public struct Stack<T> {
  fileprivate var arr = [T]()
  
  // push
  public mutating func push(_ element: T) {
    arr.append(element)
  }
  
  // pop
  public mutating func pop() -> T? {
    return arr.popLast()
  }
  
  // peek
  public func peek() -> T? {
    return arr.last
  }
  
  // isEmpty
  public var isEmpty: Bool {
    return arr.isEmpty
  }
  
  // count
  public var count: Int {
    return arr.count
  }
}

