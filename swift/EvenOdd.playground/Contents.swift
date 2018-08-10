// Author: Alan Pham
// Date: January 24th, 2016
//
// Description: From Codewars, a function that returns even if the number is even and odd if the number is odd
//
//
//

import Cocoa

/*
  @param num - integer to determine if odd or even
  @return true if the number is even, else return false
 */
func isEven(num: Int) -> Bool{
  if num % 2 == 0 {
    return true;
  }
  else {
    return false;
  }
};

let number = 3;
if isEven(num: number) == true {
  print("\(number) is even!");
}
else {
  print("\(number) is odd!");
}
