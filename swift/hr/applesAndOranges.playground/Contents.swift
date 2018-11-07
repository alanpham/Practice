import Cocoa
import XCTest

var str = "Hello, playground"

func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> [Int] {
  var result: [Int] = [];
  var appleCount = 0, orangeCount = 0
  for apple in apples {
    let position = a + apple
    if (position >= s && position <= t) {
      appleCount += 1
    }
  }
  
  for orange in oranges {
    let position = b + orange
    if (position >= s && position <= t) {
      orangeCount += 1
    }
  }
  
  result.append(appleCount)
  result.append(orangeCount)
  return result
}

let s = 7, t = 11, locationOfAppleTree = 5, locationOfOrangeTree = 15, numOfApples = 3, numOfOranges = 2
let positionsOfApples = [-2, 2, 1], positionsOfOranges = [5, -6]

XCTAssertEqual(countApplesAndOranges(s: s, t: t, a: locationOfAppleTree, b: locationOfOrangeTree, apples: positionsOfApples, oranges: positionsOfOranges), [1, 1])
