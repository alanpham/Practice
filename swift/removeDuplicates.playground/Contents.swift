import Cocoa


func makeList(_ n: Int) -> [Int] {
  return (0..<n).map{_ in Int(arc4random_uniform(20)+1)}
}

func removeDuplicates(_ arr: [Int]) -> [Int] {
  let sortList = arr.sorted()
  let sizeOfSortList = sortList.count
  
  var result = [Int]()
  var previous = sortList[0]
  
  result.append(sortList[0])
  
  for i in 1...(sizeOfSortList-1) {
    let current = sortList[i]
    
    if (previous != current) {
      result.append(current)
    }
    
    previous = current
  }
  
  return result
}

var test = [1, 2, 1, 4, 11, 14]

removeDuplicates(test)
