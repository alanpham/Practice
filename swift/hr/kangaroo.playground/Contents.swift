import Cocoa
import XCTest

// ((# of jumps)(distance)) + position
func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
  
  let maxPosition = 10000
  var kangarooOnePosition = x1, kangarooTwoPosition = x2
  
  while (kangarooOnePosition <= maxPosition && kangarooTwoPosition <= maxPosition) {
    kangarooOnePosition += v1
    kangarooTwoPosition += v2
    
    if (kangarooOnePosition == kangarooTwoPosition) {
      return "YES"
    }
  }
  
  return "NO"
}

func kangaroo2(x1: Int, v1: Int, x2: Int, v2: Int) -> String  {
  var kangarooOnePosition = x1, kangarooTwoPosition = x2

  if (v1 <= v2) {
    return "NO"
  }
  while (kangarooOnePosition != kangarooTwoPosition) {
    kangarooOnePosition += v1
    kangarooTwoPosition += v2
  }
  
  if (kangarooOnePosition == kangarooTwoPosition) {
    return "YES"
  }

  return "NO"
}

let kangarooOnePosition = 0, kangarooTwoPosition = 4
let rateOfKangarooOne = 3, rateOfKangarooTwo = 2

//print(kangaroo(x1: kangarooOnePosition, v1: rateOfKangarooOne, x2: kangarooTwoPosition, v2: rateOfKangarooTwo))

//print(kangaroo2(x1: 1571, v1: 4240, x2: 9023, v2: 4234))
//print(kangaroo2(x1: 7271, v1: 2211, x2: 7915, v2: 2050))
//print(kangaroo2(x1: 0, v1: 2, x2: 5, v2: 3))
print(kangaroo2(x1: 23, v1: 9867, x2: 9814, v2: 5861))
//print(kangaroo2(x1: 0, v1: 2, x2: 5, v2: 3))
