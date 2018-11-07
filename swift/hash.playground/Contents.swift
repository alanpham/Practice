import Cocoa

var str = "Hello, playground"

func naiveHash(_ string: String) -> Int {
  let unicodeScalars = string.unicodeScalars.map{Int($0.value)}
  return unicodeScalars.reduce(0, +)
}


naiveHash("abc")
naiveHash("bac")

func djb2Hash(_ string: String) -> Int {
  let unicodeScalars = string.unicodeScalars.map{Int($0.value)}
  return unicodeScalars.reduce(5381) {
    ($0 << 5) &+ $0 &+ Int($1)
  }
}

djb2Hash("abc")
djb2Hash("bac")
djb2Hash("hobbies")

