//: Insertion Sort


var arr: [Int] = [2, 6, 3 , 7, 10, 12, 1]


for i in 1..<arr.count {
  var x = i
  let temp = arr[x]
  
  while x > 0 && temp < arr[x-1]{
    arr[x] = arr[x-1]
    x -= 1
  }
  
  arr[x] = temp
}

print(arr)
