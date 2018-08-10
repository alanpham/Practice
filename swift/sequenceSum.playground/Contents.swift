//: Playground - noun: a place where people can play

import Cocoa

func sequenceSum(begin: Int, end: Int, step: Int) -> Int{
  
  if (begin > end){
    return 0;
  }
  else if (begin == end){
    return begin;
  }
  
  var value = begin;
  let numSteps = (end - begin)/step;
  
  while <#condition#> {
    <#code#>
  }
  
  return value;
};


sequenceSum(begin: 1, end: 5, step: 3)