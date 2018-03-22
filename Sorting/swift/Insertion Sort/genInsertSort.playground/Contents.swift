//: Generic Insertion Sort: An insertion sort that can handle any data type.

func genInsertSort<T> (_ array: [T], _ isOrderedBefore: (T,T) -> Bool) -> [T] {
  
  var arr = array
  
  for i in 1..<arr.count {
    var index = i
    let temp = arr[index]
    
    while index > 0 && isOrderedBefore(temp, arr[index-1]) {
      arr[index] = arr[index-1]
      index -= 1
    }
    
    arr[index] = temp
  }
  
  return arr
}

let test: [Int] = [2, 6, 3, 7, 10, 12, 1]

var result: [Int] = genInsertSort(test, <)

var result2: [Int] = genInsertSort(test, >)
