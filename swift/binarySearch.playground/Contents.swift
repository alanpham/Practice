import Cocoa

var str = "Hello, playground"

func binarySearchRecursive<T: Comparable>(_ a: [T], key: T, range: Range<Int>) -> Int? {
  
  if range.lowerBound >= range.upperBound {
    return nil
  }
  else {
    let mid = range.lowerBound + (range.upperBound - range.lowerBound)/2
    
    if (a[mid] > key) {
      return binarySearchRecursive(a, key: key, range: range.lowerBound ..< mid)
    }
    else if (a[mid] < key){
      binarySearchRecursive(a, key: key, range: mid+1 ..< range.upperBound)
    }
    else {
      return mid
    }
  }
  
  return nil
}


let nums = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67]

binarySearchRecursive(nums, key: 19, range: 0..<nums.count)


