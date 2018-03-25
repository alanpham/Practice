//: Selection Sort

/**
 Sorts an array.
 
 - returns: Sorted array of type Int.
 - parameter array: An unsorted array that is to be sorted.
 */
func selectionSort(_ array: [Int]) -> [Int] {
  var temp = array
  
  for i in 0..<temp.count {
    var index = i
    var low = temp[i]
    while (index < temp.count) {
      if (temp[index] < low) {
        let a = temp[i]
        temp[i] = temp[index]
        low = temp[index]
        temp[index] = a
      }
      index += 1
    }
  }
  
  return temp
}

var test: [Int] = [4, 5, 6, 1, 2, 3]
/*
 4 5 6 3 2 1
 3 5 6 4 2 1
 2 5 6 4 3 1
 1 5 6 4 3 2
 1 4 6 5 3 2
 1 3 6 5 4 2
 1 2 6 5 4 3
 1 2 5 6 4 3
 1 2 4 6 5 3
 1 2 3 6 5 4
 1 2 3 4 5 6
 */
var testsss = [4, 5, 6, 3, 2, 1]
var tests: [Int] = [25, 100, 2, 3, 10, 1, 1000, 50, 8]

var test2 = selectionSort(test)
var test3 = selectionSort(testsss)
