//: Playground - noun: a place where people can play

import UIKit

var multiplier: Int = 5830
var multiplicand: Int = 23958233

var result: Int = 0

while (multiplier > 0) {
  if (multiplier % 2 != 0){
    result = result + multiplicand
  }
  multiplicand = multiplicand << 1
  multiplier = multiplier >> 1
}

print("\(result)")
