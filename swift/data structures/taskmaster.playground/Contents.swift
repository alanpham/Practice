//: Playground - noun: a place where people can play

import Foundation

var n: Int = 2

var a: [Int] = [1, 2] //[1,2]
var b : [Int] = [2, 1] //[2,1]

var res = Array(1...n)
var count: Int = 0

for element in b {
  if let i = res.index(of: a[count]) {
    print("hi")
    res.remove(at: i)
  }
}

print(res.count)


//print("\(count)")

